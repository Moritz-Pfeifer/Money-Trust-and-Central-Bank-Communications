import os, sys

p = (str(os.getcwd())).split(os.sep)
p = p[:len(p)-2]
pth = ''
for pp in p:
    pth = pth+ pp + os.sep # have to do this becuase os.path.join('C:', 'FooBar') will give C:FooBar instead of C:/FooBar on windows
print(f'{pth} added to path')
sys.path.append(pth)

sys.path.append(str(Path(__file__).parents[2]))

import json
import time
import chromedriver_helper as driver_helper
import settings_helper
import file_helper
from lxml import etree
import database as _db
from urllib.parse import urlparse
from os.path import splitext
import os
from selenium.common.exceptions import JavascriptException
from datetime import date
import requests
import colorama
from colorama import Fore, Style, Back
from colorama import init
init()


def generate_url(partial):
    return f'https://www.banque-france.fr{partial}'


settings = settings_helper.load_settings('../../Settings.json')

driver = driver_helper.get_driver(settings["chromeDriverLocation"], settings["headlessDriver"])
# driver.get("https://www.google.com")
driver.get("https://web.archive.org/web/20161018040441/https:/www.banque-france.fr/la-banque-de-france/communiques-et-discours-des-autorites-de-la-banque/discours-des-autorites-de-la-banque.html")
data = []

time.sleep(5)
try:
    data = driver.execute_script("function getElementsByXpath(xpathStr, scope = document) {"
                                 "var allElements = [];"
                                 "var elements = document.evaluate(xpathStr, scope, null, XPathResult.ANY_TYPE, null);"
                                 "var thisElement = elements.iterateNext();"
                                 "while (thisElement) {"
                                 "allElements.push(thisElement);"
                                 "thisElement = elements.iterateNext();}return allElements;}"
                                 "var yearWisePRs = [];var singleYearPRs = {};singlePR = {};"
                                 "singleYearPRs = {};singleYearPRs.year = null;singleYearPRs.PRs = [];"
                                 "var years = document.getElementById('menu-tabs').getElementsByTagName('li');"
                                 "for (i = 0; i < years.length; i++) {var yearVal = parseInt(years[i].innerText);"
                                 "if (yearVal > 2014) {console.log('skipped ', yearVal);} else {console.log('processing:', yearVal);"
                                 "var thisYear = yearVal;years[i].getElementsByTagName('a')[0].click();"
                                 "var thisYearsPRs = getElementsByXpath("
                                 "`//div[@id='tabs1']//div[not(contains(@style,'display: none'))]//td`);"
                                 "singleYearPRs = {};singleYearPRs.year = thisYear;singleYearPRs.PRs = [];"
                                 "for (j = 0; j < thisYearsPRs.length; j++) {singlePR = {};"
                                 "singlePR.title = thisYearsPRs[j].getElementsByTagName('span')[0].innerText;"
                                 "var possibleDate = thisYearsPRs[j].getElementsByTagName('p');"
                                 "var extraDate = '';if (possibleDate.length > 0) {"
                                 "for (p = 0; p < possibleDate.length; p++) {"
                                 "var foobarText = possibleDate[p].innerText.replace(/\&nbsp;/g, '');"
                                 "if (foobarText != undefined && foobarText != 'undefined') {"
                                 "extraDate += ' ' + foobarText;}}extraDate = extraDate.split('undefined').join('');"
                                 "extraDate = extraDate.trim();singlePR.title = extraDate + ' - ' + singlePR.title;}"
                                 "var allAttachments = thisYearsPRs[j].getElementsByTagName('a');"
                                 "singlePR.attachments = [];singlePR.attachments.push({href: allAttachments[0].href,"
                                 "title: allAttachments[0].innerText});singleYearPRs.PRs.push(singlePR);}"
                                 "yearWisePRs.push(singleYearPRs);}}return yearWisePRs;")
    print(data)
except Exception as je:
    print("Error in javascript")
    print(je)
    exit(-1)

item_list = []

try:
    for year_object in data:
        print(Fore.BLUE + f'Processing data for year {year_object["year"]}')
        print(Style.RESET_ALL, end='')
        for pr_index, pr_object in enumerate(year_object["PRs"]):
            for attachment in pr_object["attachments"]:
                content = None
                content_type = None
                print("***********************************************************************************************")
                print(Fore.CYAN + f'Discours/Interviews/AutresInterventions {pr_index + 1}/{len(year_object["PRs"])}')
                filename, ext = file_helper.get_filename_ext(attachment["href"])
                print(Fore.MAGENTA + f'File type: {ext.upper()}')
                time.sleep(10)  # sleep for 15 secs to avoid getting no response from WBM
                if ext == "pdf":
                    status, content, download_url, not_download_reason = file_helper.download_file(attachment["href"],
                                                                                                   "Discours_Interviews_AutresInterventions",
                                                                                                   filename, ext,
                                                                                                   settings[
                                                                                                       "reDownloadExistingFiles"])
                    # Reset colorma style
                    print(Style.RESET_ALL, end='')
                    if status:
                        item_list.append(
                            [file_helper.extract_section(pr_object["title"]), download_url, pr_object["title"], content,
                             1, 'Banque de France', file_helper.try_parse_date(pr_object["title"], year_object["year"])])  # ContentType: 1 = PDF
                    else:
                        print(f'{filename} FAILED TO DOWNLOAD')
                        item_list.append(
                            [file_helper.extract_section(pr_object["title"]), attachment["href"], pr_object["title"], 'DIA_FAILED_TO_DOWNLOAD',
                             1, 'Banque de France', file_helper.try_parse_date(pr_object["title"], year_object["year"])])
                elif ext == "html":
                    driver.get(attachment["href"])
                    time.sleep(1)
                    try:
                        content = driver.execute_script(
                            "function getElementsByXpath(xpathStr, scope = document) {var allElements = [];"
                            "var elements = document.evaluate(xpathStr,scope,null,XPathResult.ANY_TYPE,null);"
                            "var thisElement = elements.iterateNext();"
                            "while (thisElement) {"
                            "allElements.push(thisElement);"
                            "thisElement = elements.iterateNext();}"
                            "return allElements;}"
                            "return getElementsByXpath('//div[@id=\"wysiwyg\"]')[0].innerText")
                        item_list.append(
                            [file_helper.extract_section(pr_object["title"]), attachment["href"], pr_object["title"], content,
                             0, 'Banque de France', file_helper.try_parse_date(pr_object["title"], year_object["year"])])  # ContentType: 0 = Text
                    except JavascriptException as jve:
                        # if we get here, it means the page was not available on the current WBM snapshot
                        # so we try to get all the snapshots available for this page, from 2001-01-01 to current date
                        # and check if we can get content from one of those

                        print(f'{attachment["href"]} leads to 404. Trying to fetch fallback URLs..')
                        fallback_status, fallback_urls = file_helper.try_get_fallback_urls(attachment["href"])

                        if not fallback_status:
                            print(Fore.RED + f'Failed to fetch content because failed to fetch fallback URLs.')
                            item_list.append(
                                [file_helper.extract_section(pr_object["title"]), attachment["href"], pr_object["title"], 'DIA_FAILED_TO_FETCH',
                                 0, 'Banque de France', file_helper.try_parse_date(pr_object["title"], year_object["year"])])  # ContentType: 0 = Text
                            print(Style.RESET_ALL, end='')
                            continue

                        for fallback_index, fallback_url in enumerate(fallback_urls):
                            print(f'Trying fallback URL {fallback_index + 1}/{len(fallback_urls)}.')
                            time.sleep(5)
                            driver.get(fallback_url)
                            try:
                                content = driver.execute_script(
                                    "function getElementsByXpath(xpathStr, scope = document) {var allElements = [];"
                                    "var elements = document.evaluate(xpathStr,scope,null,XPathResult.ANY_TYPE,null);"
                                    "var thisElement = elements.iterateNext();"
                                    "while (thisElement) {"
                                    "allElements.push(thisElement);"
                                    "thisElement = elements.iterateNext();}"
                                    "return allElements;}"
                                    "return getElementsByXpath('//div[@id=\"wysiwyg\"]')[0].innerText")
                                print(Fore.GREEN + f'Fallback page found at {fallback_url}')
                                item_list.append(
                                    [file_helper.extract_section(pr_object["title"]), fallback_url, pr_object["title"], content,
                                     0, 'Banque de France', file_helper.try_parse_date(pr_object["title"], year_object["year"])])  # ContentType: 0 = Text
                                break
                            except JavascriptException as jve:
                                print(Fore.RED + f'{fallback_url} leads to 404. Trying the next one.')

                        # if we get here, that means none of the fallback URLs worked
                        print(
                            Fore.RED + f'None of the fallback URLs worked. Saving record with FAILED_TO_FETCH status.')
                        item_list.append(
                            [file_helper.extract_section(pr_object["title"]), attachment["href"], pr_object["title"], 'DIA_FAILED_TO_FETCH',
                             0, 'Banque de France', file_helper.try_parse_date(pr_object["title"], year_object["year"])])  # ContentType: 0 = Text
                        print(Style.RESET_ALL, end='')

        print(Back.MAGENTA + "________________________________________________________________________________________")
except KeyboardInterrupt:
    print("Stopping..")
    print(f"Total items scraped: {len(item_list)}")
finally:
    driver.quit()

print(Style.RESET_ALL, end='')
for r in item_list:
    print(r)

print('Writing records to database.')
print(f'Total records scraped: {len(item_list)}')
db = _db.Database(name='../../bank_of_france.db')
db.write_many("records (section, url, title, content, contentType, author, postedOn)", "?,?,?,?,?,?,?", item_list)
db.close()
print("Records written to database successfully. Finished..")
