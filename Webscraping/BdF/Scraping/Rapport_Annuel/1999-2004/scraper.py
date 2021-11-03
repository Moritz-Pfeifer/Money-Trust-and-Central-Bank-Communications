import os, sys

p = (str(os.getcwd())).split(os.sep)
p = p[:len(p)-2]
pth = ''
for pp in p:
    pth = pth+ pp + os.sep 
print(f'{pth} added to path')
sys.path.append(pth)

sys.path.append(str(Path(__file__).parents[2]))

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


EXCLUDE_YEARS = ['1994', '1995', '1996', '1997', '1998', '2005', '2006', '2007', '2008']
item_list = []

settings = settings_helper.load_settings('../../Settings.json')
driver = driver_helper.get_driver(settings["chromeDriverLocation"], settings["headlessDriver"])
driver.get("https://www.banque-france.fr/fileadmin/user_upload/banque_de_france/archipel/banque_de_france/bdf_ra.html")
years = driver.find_elements_by_xpath("//div[@id='meta']//p")

for index, year in enumerate(years):
    anchor = year.find_element_by_xpath('.//a')
    title = anchor.text.strip()
    url = anchor.get_attribute('href')

    print(Fore.YELLOW + f'Item {index + 1}/{len(years)}:')
    if title[-4:] in EXCLUDE_YEARS:
        print(Fore.YELLOW + f'Skipping {title[-4:]}..')
        continue

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
            item_list.append(["Rapport Annuel", download_url, title, content, 1, 'Banque de France', f'{title[-4:]}-01-01 00:00:00'])
        else:
            print(Fore.RED + f'{filename} FAILED TO DOWNLOAD')
            item_list.append(["Rapport Annuel", url, title, 'RA_FAILED_TO_DOWNLOAD', 1, 'Banque de France', f'{title[-4:]}-01-01 00:00:00'])
    except Exception as ae:  # attachment exception
        print(Fore.RED + f'FAILED TO DOWNLOAD')
        print(Fore.RED + str(ae))
        item_list.append(["Rapport Annuel", url, title, 'RA_FAILED_TO_DOWNLOAD', 1, 'Banque de France', f'{title[-4:]}-01-01 00:00:00'])

driver.quit()

print(Back.CYAN + '_____________________________________________________________________________________________')
print(Style.RESET_ALL, end='')
print(Fore.YELLOW + f'Trying to write {len(item_list)} records to database...')
db = _db.Database(name='../../bank_of_france.db')
db.write_many("records (section, url, title, content, contentType, author, postedOn)", "?,?,?,?,?,?,?", item_list)
db.close()
print(Fore.GREEN + f'{len(item_list)} written to database successfully!\nFinished!')
print(Style.RESET_ALL, end='')
