import json
import sqlite3
import sys
from time import sleep

import PyPDF2
import requests
from bs4 import BeautifulSoup


def extract_pdf_text(pdf_file_name):
    pages = []

    try:
        print('Extract Data from the PDF file:- {}'.format(pdf_file_name))
        pdfFileObj = open(pdf_file_name, 'rb')
        pdfReader = PyPDF2.PdfFileReader(pdfFileObj)
        total_pages = pdfReader.numPages
        for page in range(0, total_pages):
            pageObj = pdfReader.getPage(page)
            text = pageObj.extractText()
            text = text.encode('utf8').decode("utf-8").strip()

            pages.append(text)
    except Exception as ex:
        print('Exception in extract_pdf_text')
        print(str(ex))
    finally:
        return pages


def get_links():
    ids = []
    records = []

    try:
        TABLE_NAME = 'links'
        DB_PATH = 'bundesbank.db'
        conn = sqlite3.connect(DB_PATH)

        if conn is not None:
            cursor = conn.cursor()
            sql = 'SELECT * FROM links where status = 0 LIMIT {}'.format(LIMIT)
            sql = "select * from links where post_link like '%.pdf%' LIMIT 2"

            cursor.execute(sql)
            records = cursor.fetchall()

            for record in records:
                ids.append(record[0])
            # Update the status
            sql = 'UPDATE links set status = 1 where id IN (%s)' % ','.join('?' for i in ids)
            cursor.execute(sql, ids)
            conn.commit()
    except Exception as ex:
        print('Error while fetching jobs')
        print(ex)
    finally:
        return records


def dl_pdf(p_url):
    downloaded_pdf_file_name = None
    downloaded_pdf_file_name = p_url.split('/')[-1]

    try:
        if '.pdf' in p_url:
            print('Downloading the file...' + p_url)
            response = requests.get(p_url, headers=headers, timeout=30)

            if response.status_code == 200:
                file_name = downloaded_pdf_file_name

                with open(file_name, 'wb') as fi:
                    fi.write(response.content)
    except Exception as ex:
        print('Exception in dl_pdf')
        print(str(ex))
    finally:
        return downloaded_pdf_file_name


def parse(record_id, _author, _post_link, _link_type, _published_date, _section):
    pdf_link = '-'
    main_text = '-'
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
            html = r.text.strip()
            soup = BeautifulSoup(html, 'lxml')
            pdf_link_section = soup.select('.collection__link')
            main_section = soup.select('.main')

            if _link_type == 'html':
                if main_section:
                    main_text = main_section[0].text.strip()
                    main_text = bytes(main_text, 'utf-8')
                    # main_text = str(main_text)
                    # main_text = eval(main_text)
                    # main_text = str(main_text, 'utf-8')
                    main_text = main_text.decode("utf-8")

                if pdf_link_section:
                    pdf_link = 'https://www.bundesbank.de{}'.format(pdf_link_section[0]['href'])
                    pdf_file = dl_pdf(pdf_link)

            elif _link_type == 'pdf':
                pdf_link = _post_link
                pdf_file = dl_pdf(pdf_link)

            if pdf_file is not None and pdf_file != '-':
                pdf_text = extract_pdf_text(pdf_file)

            record = {'AUTHOR': _author, 'PDF_URL': pdf_link, 'LOCAL_PDF_FILE': pdf_file, 'DATE': _published_date,
                      'TEXT': main_text, 'PDF_TEXT': pdf_text, 'SECTION': _section, 'RECORD_ID': record_id}
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
        LIMIT = 10

    print('Total links going to be processed: {}'.format(LIMIT))

    TABLE_NAME = 'links'
    DB_PATH = 'bundesbank.db'
    links = get_links()
    conn = sqlite3.connect(DB_PATH)

    for link in links:
        link_id = link[0]
        author = link[1]
        post_link = link[2]
        link_type = link[3]
        published_date = link[4]
        section_name = link[6].strip()

        result = parse(link_id, author, post_link, link_type, published_date, section_name)

        if len(result) > 0:
            record_id = result['RECORD_ID']

            if conn is not None:
                cursor = conn.cursor()
                sql = 'UPDATE {} SET status = 3 where id = {}'.format(TABLE_NAME, record_id)
                cursor.execute(sql)
                conn.commit()

            json_data = json.dumps(result, ensure_ascii=False)
            file_name = '{}_{}_{}.json'.format(section_name, published_date.replace('.', '_'), link_id)

            with open(file_name, 'w', encoding='utf8') as f:
                f.write(json_data)
        sleep(5)
