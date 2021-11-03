import io
import json
import os
import sqlite3

import PyPDF2
import requests


def get_links():
    ids = []
    records = []

    try:

        if conn is not None:
            cursor = conn.cursor()
            sql = 'SELECT * FROM {} where status = 0 LIMIT {}'.format(TABLE_FETCH, LIMIT)

            cursor.execute(sql)
            records = cursor.fetchall()

            for record in records:
                ids.append(record[0])

            # Update the status
            sql = 'UPDATE {} set status = 1 where id IN (%s)'.format(TABLE_FETCH) % ','.join('?' for i in ids)
            cursor.execute(sql, ids)
            conn.commit()
    except Exception as ex:
        print('Error while fetching links')
        print(ex)
    finally:
        return records


def parse_text(u):
    pages = []
    # url = 'http://www.asx.com.au/asxpdf/20171108/pdf/43p1l61zf2yct8.pdf'
    # url = 'https://www.ecb.europa.eu/pub/pdf/mobu/mb201401en.pdf'
    print('Processing...{}'.format(u))

    file_parts = u.split('/')
    date_part = file_parts[6].replace('en.pdf', '').replace('mb', '') + '01'
    published_date = date_part[0:4] + '-' + date_part[4:6] + '-01'
    title = 'Monthly Bulletin'

    response = requests.get(u, timeout=20)

    with io.BytesIO(response.content) as open_pdf_file:
        read_pdf = PyPDF2.PdfFileReader(open_pdf_file)
        total_pages = read_pdf.getNumPages()

        for page in range(0, total_pages):
            if page > 4:
                print('Processing Page No {}'.format(page))
                pageObj = read_pdf.getPage(page)
                text = pageObj.extractText()
                text = text.encode('utf8').decode("utf-8").strip()
                pages.append(text)

    rec = {'title': title, 'published_date': published_date, 'TEXT': pages}

    if not os.path.exists('ecb/ecb_data/'):
        os.makedirs('ecb/ecb_data/')

    file_name = 'ecb/ecb_data/' + title + '-' + published_date + '.json'
    print('Generating the file: {}'.format(file_name))

    with open(file_name, 'a+', encoding='utf8') as f:
        f.write(json.dumps(rec))


if __name__ == '__main__':
    LIMIT = 50
    DB_PATH = os.path.abspath('.') + '/ecb.db'
    TABLE_FETCH = 'links_monthly_bulletin'
    conn = sqlite3.connect(DB_PATH)

    while True:
        print('Begin block')
        links = get_links()
        if len(links) == 0:
            break

        for link in links:
            parse_text(link[1])
    
        print('End block')
