import os, sys

p = (str(os.getcwd())).split(os.sep)
p = p[:len(p)-2]
pth = ''
for pp in p:
    pth = pth+ pp + os.sep # have to do this becuase os.path.join('C:', 'FooBar') will give C:FooBar instead of C:/FooBar on windows
print(f'{pth} added to path')
sys.path.append(pth)

# This works for Linux, so might work for Mac too if the above code doesn't work on a Mac
# sys.path.append(str(Path(__file__).parents[2]))

import time
import chromedriver_helper as driver_helper
import settings_helper
import file_helper
from lxml import etree
import database as _db
from selenium.common.exceptions import TimeoutException
from colorama import Fore, Style, Back
from colorama import init
init()


def load_all(_driver):
    expander_script = 'var icons = document.getElementsByClassName("icon-More-Circle");' \
                 'for(i=0; i<icons.length; i++){icons[i].click();}'
    _driver.execute_script(expander_script)
    time.sleep(1)
    loader_script = 'document.getElementsByClassName("pager-next first last")[0].getElementsByTagName("a")[0].click();'
    _driver.execute_script(loader_script)
    time.sleep(2)
    _driver.execute_script(expander_script)


item_list = []

settings = settings_helper.load_settings('../../Settings.json')
driver = driver_helper.get_driver(settings["chromeDriverLocation"], settings["headlessDriver"])
driver.get("https://www.banque-france.fr/liste-chronologique/le-rapport-annuel-de-la-banque-de-france")
load_all(driver)


years = driver.find_elements_by_xpath("//div[@class='field field-name-field-documents field-type-paragraphs field-label-hidden bloc-doc wpdf active']")

# years = driver.find_elements_by_xpath("//*[text() = 'Téléchargement']")

for index, year in enumerate(years):

    title = year.find_element_by_xpath(".//span[@class='category']").text.strip()
    url = year.find_element_by_xpath(".//*[text() = 'Téléchargement']").get_attribute('href')
    date = year.find_element_by_xpath(".//span[@class='date-display-single']").text.strip()

    print(Fore.YELLOW + f'Item {index + 1}/{len(years)}:')
    print(f'Title: {title}')
    print(f'Date: {date}')
    print(f'URL: {url}')


    try:
        # item[0] = section
        # item[1] = url
        # item[2] = title
        # item[3] = content
        # item[4] = contentType
        # item[5] = author
        # item[6] = date/postedOn
        filename, ext = file_helper.get_filename_ext(url)
        status, content, download_url, not_download_reason = file_helper.download_file(url,
                                                                                       "Rapport Annuel",
                                                                                       filename, ext,
                                                                                       settings[
                                                                                           "reDownloadExistingFiles"],
                                                                                       _fix_url=False,
                                                                                       _has_fallbacks=False)
        print(Style.RESET_ALL, end='')
        if status:
            item_list.append(["Rapport Annuel", download_url, title, content, 1, 'Banque de France', file_helper.try_parse_date(date, "")])
        else:
            print(Fore.RED + f'{filename} FAILED TO DOWNLOAD')
            item_list.append(["Rapport Annuel", url, title, 'RA_FAILED_TO_DOWNLOAD', 1, 'Banque de France', file_helper.try_parse_date(date, "")])
    except Exception as ae:  # attachment exception
        print(Fore.RED + f'FAILED TO DOWNLOAD')
        print(Fore.RED + str(ae))
        item_list.append(["Rapport Annuel", url, title, 'RA_FAILED_TO_DOWNLOAD', 1, 'Banque de France', file_helper.try_parse_date(date, "")])

driver.quit()

print(Back.CYAN + '_____________________________________________________________________________________________')
print(Style.RESET_ALL, end='')
print(Fore.YELLOW + f'Trying to write {len(item_list)} records to database...')
db = _db.Database(name='../../bank_of_france.db')
db.write_many("records (section, url, title, content, contentType, author, postedOn)", "?,?,?,?,?,?,?", item_list)
db.close()
print(Fore.GREEN + f'{len(item_list)} written to database successfully!\nFinished!')
print(Style.RESET_ALL, end='')
