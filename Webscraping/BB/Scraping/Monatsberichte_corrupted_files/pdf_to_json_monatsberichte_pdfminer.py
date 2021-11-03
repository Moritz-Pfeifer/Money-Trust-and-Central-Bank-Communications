import json
import sqlite3
import sys
from time import sleep
import os

import requests
from bs4 import BeautifulSoup
import re
from pdfminer.pdfinterp import PDFResourceManager, PDFPageInterpreter
from pdfminer.converter import TextConverter
from pdfminer.layout import LAParams
from pdfminer.pdfpage import PDFPage
from io import StringIO


def extract_pdf_text(downloaded_pdf_file_name):
    rsrcmgr = PDFResourceManager()
    retstr = StringIO()
    codec = 'utf-8'
    laparams = LAParams()
    device = TextConverter(rsrcmgr, retstr, codec=codec, laparams=laparams)
    fp = open(downloaded_pdf_file_name, 'rb')
    interpreter = PDFPageInterpreter(rsrcmgr, device)
    password = ""
    maxpages = 0
    caching = True
    pagenos = set()

    for page in PDFPage.get_pages(fp, pagenos, maxpages=maxpages, password=password, caching=caching, check_extractable=True):
        interpreter.process_page(page)

    pdf_text_content = retstr.getvalue()

    fp.close()
    device.close()
    retstr.close()
    pdf_text_content = re.sub(r"  +", " ", pdf_text_content)
    pdf_text_content = re.sub("-\s+(?:(?<!\b[0-9]{4}-)|(?![0-9]{2}(?:[0-9]{2})?\b))", "", pdf_text_content)
    pdf_text_content = re.sub("\n", " ", pdf_text_content)
    return pdf_text_content


def get_links():
    ids = []
    records = []

    try:
        TABLE_NAME = 'links'
        DB_PATH = 'bundesbank_monatsberichte_test.db'
        conn = sqlite3.connect(DB_PATH)
        if conn is not None:
            cursor = conn.cursor()
            sql = 'SELECT * FROM links where status = 2 LIMIT {}'.format(LIMIT)

            cursor.execute(sql)
            records = cursor.fetchall()

            for record in records:
                print (record)
                ids.append(record[0])

    except Exception as ex:
        print('Error while fetching jobs')
        print(ex)
    finally:
        return records

def not_dl_pdf(p_url):
    downloaded_pdf_file_name = None
    downloaded_pdf_file_name = p_url.split('/')[-1]

    try:
        if '.pdf' in p_url:
            print('Checking for the file...' + downloaded_pdf_file_name)
            os.chdir("Monatsberichte_Decrytpted")
            folder=os.getcwd()

            for item in os.listdir(folder):
                if item==downloaded_pdf_file_name:
                    os.chdir(os.path.dirname(os.getcwd()))
                    return ("Monatsberichte_Decrytpted/"+downloaded_pdf_file_name)

            os.chdir(os.path.dirname(os.getcwd()))

    except Exception as ex:
        print('Exception in dl_pdf')
        print(str(ex))

def parse(record_id, _author, _title, _post_link, _link_type, _published_date, _section):
    pdf_link = '-'
    main_text = '-'
    title = '-'
    pdf_text = []
    record = {}
    pdf_file = '-'

    try:
        session = requests.session()
        if 'https://' not in _post_link:
            _post_link = 'https://www.bundesbank.de{}'.format(_post_link)

        print('Processing...' + _post_link)

        r = session.get(_post_link, headers=headers, timeout=30)

        if r.status_code == 200:
            print("success")
            html = r.text.strip()
            soup = BeautifulSoup(html, 'lxml')
            pdf_link_section_1 = soup.select('.mr-1')

            if pdf_link_section_1:
                 pdf_link = 'https://www.bundesbank.de{}'.format(pdf_link_section_1[0]['href'])
                 print(pdf_link)
                 pdf_file = not_dl_pdf(pdf_link)

            if pdf_file is not None and pdf_file != '-':
                pdf_text = extract_pdf_text(pdf_file)

            record = {'AUTHOR': _author, 'TITLE': _title, 'PDF_URL': pdf_link, 'LOCAL_PDF_FILE': pdf_file, 'DATE': _published_date,
                      'TEXT': main_text, 'PDF_TEXT': pdf_text, 'SECTION': _section, 'RECORD_ID': record_id}

        else:
            print("fail")
    except Exception as ex:
        print('Exception in Parse')
        print(str(ex))
    finally:
        return record


if __name__ == '__main__':
    headers = {
        'Connection': 'keep-alive',
        'Pragma': 'no-cache',
        'Cache-Control': 'no-cache',
        'Upgrade-Insecure-Requests': '1',
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3',
        'Accept-Encoding': 'gzip, deflate, br',
        'Accept-Language': 'en-US,en;q=0.9,ur;q=0.8',
    }

    args = sys.argv
    if len(args) == 2:
        LIMIT = args[1]
    else:
        LIMIT = 12

    print('Total links going to be processed: {}'.format(LIMIT))

    TABLE_NAME = 'links'
    DB_PATH = 'bundesbank_monatsberichte_test.db'
    links = get_links()
    conn = sqlite3.connect(DB_PATH)

    for link in links:
        link_id = link[0]
        author = link[1]
        title = link[2]
        post_link = link[3]
        link_type = link[4]
        published_date = link[5]
        section_name = link[7].strip()
        result = parse(link_id, author, title, post_link, link_type, published_date, section_name)

        if len(result) > 0:
            record_id = result['RECORD_ID']

            if conn is not None:
                cursor = conn.cursor()
                sql = 'UPDATE {} SET status = 1 where id = {}'.format(TABLE_NAME, record_id)
                cursor.execute(sql)
                conn.commit()

            json_data = json.dumps(result, ensure_ascii=True)
            if not os.path.exists("Output"):
                os.makedirs("Output")
            file_name = 'Output/{}_{}_{}.json'.format(section_name, published_date.replace('.', '_'), link_id)

            with open(file_name, 'w', encoding='utf8') as f:
                f.write(json_data)
        sleep(5)
