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


def generate_url(partial):
    if 'https://www.banque-france.fr' not in partial:
        return f'https://www.banque-france.fr{partial}'
    return partial


settings = settings_helper.load_settings('../../Settings.json')

driver = driver_helper.get_driver(settings["chromeDriverLocation"], settings["headlessDriver"])

driver.get("https://www.banque-france.fr/news/communique-de-presse")

driver.execute_script("var script = document.createElement('script');"
                      "script.src = 'https://code.jquery.com/jquery-3.4.1.min.js';"
                      "document.getElementsByTagName('head')[0].appendChild(script);")

is_jquery_loaded = driver.execute_script('try{'
                                         '$("#foobar");'
                                         'return 1;'
                                         '}'
                                         'catch{'
                                         'return 0;'
                                         '}')

while is_jquery_loaded == 0:
    time.sleep(3)
    print(Fore.RED + "JQuery not loaded, trying again...")
    is_jquery_loaded = driver.execute_script('try{'
                                             '$("#foobar");'
                                             'return 1;'
                                             '}'
                                             'catch{'
                                             'return 0;'
                                             '}')
print(Fore.GREEN + "JQuery loaded!")

# press the 'Communiqués Banque de France' button to get only BoF PRs and not ECB PRs
bof_btn = driver.find_element_by_xpath("//label[contains(text(),'Communiqués Banque de France')]")
bof_btn.click()
print(Fore.GREEN + "BoF button clicked.")
time.sleep(3)

page_no = 0
item_list = []

try:
    while True:
        if page_no == 0:
            driver.execute_script("document.getElementsByTagName('body')[0].innerHTML = '<h1>AJAX CALLS</h1><hr><br>';")

        try:
            data = driver.execute_script("var form = new FormData();"
                                         "var encaped_data = {};"
                                         "var data_to_return = null;"
                                         "form.append("
                                         "'form_build_id',"
                                         "'form-vONnZoXdwmK_U4seekAgMf9XBN4gCcF2_VuVNo3HazE'"
                                         ");"
                                         "form.append('form_id', 'bdf_page_list_news_form');"
                                         "var settings = {"
                                         "url:"
                                         f"'https://www.banque-france.fr/ajax/pagination/system/ajax?selector=bdf-page-list-news-form&page={page_no}',"
                                         "method: 'POST',"
                                         "timeout: 0,"
                                         "async: false,"
                                         "processData: false,"
                                         "mimeType: 'multipart/form-data',"
                                         "contentType: false,"
                                         "data: form"
                                         "};"
                                         "$.ajax(settings)"
                                         ".done(function (response) {"
                                         "encaped_data.isSuccess = true;"
                                         "encaped_data.data = JSON.parse(response);"
                                         "processData(encaped_data);"
                                         "})"
                                         ".fail((response) => {"
                                         "encaped_data.isSuccess = false;"
                                         "encaped_data.errorData = response;"
                                         "processData(encaped_data);"
                                         "});"
                                         "return encaped_data;"
                                         "function processData(data) {"
                                         "console.log('Data Recieved: ');"
                                         "console.log(data);"
                                         "console.log('Data Type: ', typeof data);"
                                         "var iDiv = document.createElement('div');"
                                         "if (data.isSuccess) {"
                                         f"iDiv.innerHTML = '<b style=\"color: green;\">Page #{page_no}: Successfully fetched data from ajax call.</b><br>';"
                                         "} else {"
                                         f"iDiv.innerHTML += '<b style=\"color: red;\">Page #{page_no}: Error fetching data from ajax request.</b><br>';"
                                         "}"
                                         "document.getElementsByTagName('body')[0].appendChild(iDiv);"
                                         "data_to_return = data;"
                                         "window.scrollTo(0,document.body.scrollHeight);"
                                         "}")
        except TimeoutException as te:
            print(Fore.RED + f'Ajax request timed out!.')
            page_no = page_no + 1
            continue
        html = ''

        if data['isSuccess']:
            html = data['data'][1]['data']
            tree = etree.HTML(html)
            items = tree.xpath("//div[contains(@class, 'node') and contains(@class, 'node-communique-de-presse')]")
            print(Fore.YELLOW + f"Page #{page_no}. Total items on this page: {len(items)}")

            if len(items) == 0:
                print(Fore.YELLOW + "Reached last page, all items scraped.")
                print(Fore.CYAN + f"Total items scraped: {len(item_list)}")
                break

            for item in items:
                anchor_tag = item.xpath(".//h3[1]/a[1]")[0]
                date = item.xpath(".//span[3]/span[1]")[0]
                item_list.append(
                    ['communique-de-presse', generate_url(anchor_tag.attrib.get('href')), anchor_tag.text,
                     'TRY_DOWNLOAD', 1, 'Banque de France',
                     file_helper.try_parse_date(date.text)])  # ContentType: 1 = PDF
        else:
            # print(data)
            print(Fore.RED + f"Page #{page_no}: AJAX Request failed!.")
            print(Fore.CYAN + f"Total items scraped: {len(item_list)}")
            break

        page_no = page_no + 1
        # time.sleep(1)
except KeyboardInterrupt:
    print(Fore.RED + "Stopping..")
    print(Fore.CYAN + f"Total items scraped: {len(item_list)}")

print(Back.CYAN + '_____________________________________________________________________________________________')
print(Style.RESET_ALL, end='')
print(Fore.YELLOW + f'Trying to download attachments for each item...')

final_item_list = []

try:
    for item_index, item in enumerate(item_list):
        # item[0] = section
        # item[1] = url
        # item[2] = title
        # item[3] = content
        # item[4] = contentType
        # item[5] = author
        # item[6] = date/postedOn
        try:
            print(Fore.YELLOW + f'Item {item_index + 1}/{len(item_list)}:')
            # print(item)
            print(Fore.YELLOW + f'Trying to fetch attachment download URL...')
            driver.get(item[1])
            download_link = driver.find_element_by_xpath(
                "//div[@class='bot-pdf clearfix']//a[@class='one-element-detail bt-rayen']").get_attribute('href')
            download_link = generate_url(download_link)
            print(Fore.YELLOW + f'Fetched URL: {download_link}')
            filename, ext = file_helper.get_filename_ext(download_link)
            status, content, download_url, not_download_reason = file_helper.download_file(download_link,
                                                                                           "Communiqués de presse",
                                                                                           filename, ext,
                                                                                           settings[
                                                                                               "reDownloadExistingFiles"],_fix_url=False, _has_fallbacks=False)
            print(Style.RESET_ALL, end='')
            if status:
                # print(Fore.GREEN + f'File downloaded successfully.')
                final_item_list.append([item[0], item[1], item[2], content, 1, item[5], item[6]])
            else:
                print(Fore.RED + f'{filename} FAILED TO DOWNLOAD')
                final_item_list.append([item[0], item[1], item[2], 'PR1_FAILED_TO_DOWNLOAD', 1, item[5], item[6]])
        except Exception as ae:  # attachment exception
            print(Fore.RED + f'FAILED TO GET ATTACHMENT URL')
            print(Fore.RED + str(ae))
            final_item_list.append([item[0], item[1], item[2], 'PR1_FAILED_TO_FETCH', 1, item[5], item[6]])

except Exception as ue:  # unknown exception, could be anything?
    print(Fore.RED + f'Error while processing item.')
    print(Fore.RED + str(ue))


driver.quit()
print(Back.CYAN + '_____________________________________________________________________________________________')
print(Style.RESET_ALL, end='')
print(Fore.YELLOW + f'Trying to write {len(final_item_list)} records to database...')
db = _db.Database(name='../../bank_of_france.db')
db.write_many("records (section, url, title, content, contentType, author, postedOn)", "?,?,?,?,?,?,?", final_item_list)
db.close()
print(Fore.GREEN + f'{len(final_item_list)} written to database successfully!\nFinished!')
print(Style.RESET_ALL, end='')
