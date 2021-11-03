import json
import os
import sqlite3
import sys
import time
import traceback
from time import sleep

import requests
from bs4 import BeautifulSoup


def get_links():
    ids = []
    records = []

    try:
        TABLE_NAME = 'links'
        DB_PATH = 'ecb_interviews_faulty.db'
        conn = sqlite3.connect(DB_PATH)

        if conn is not None:
            cursor = conn.cursor()
            sql = 'SELECT * FROM links where status = 0 LIMIT {}'.format(LIMIT)
            # sql = "select * from links where post_link like '%.pdf%' LIMIT 2"

            cursor.execute(sql)
            records = cursor.fetchall()

            for record in records:
                ids.append(record[0])
            # Update the status
            sql = 'UPDATE links set status = 1 where id IN (%s)' % ','.join('?' for i in ids)
            cursor.execute(sql, ids)
            conn.commit()
    except Exception as ex:
        print('Error while fetching links')
        print(ex)
    finally:
        return records


def parse(record_id, _author, _post_link, _link_type, _published_date, _section):
    pdf_link = '-'
    main_text = '-'
    pdf_text = []
    record = {}
    title = '-'
    paras = []

    try:
        print('Processing... {}'.format(_post_link))
        r = requests.get(_post_link, headers=headers)

        if r.status_code == 200:
            html = r.text.strip()
            soup = BeautifulSoup(r.content.decode('utf-8', 'ignore'), 'lxml')
            title_section = soup.select('.ecb-pressContentTitle')
            content_section = soup.select('article .section')

            if content_section:
                for c in content_section:
                    question_h2 = c.find('h2', {'class': 'title'})
                    answers_p = c.select('p')

                    if question_h2 and answers_p:
                        print('QnA Detected...\n')
                        # print('\nBEGIN_QUESTION ' + question_h2.text.replace('lâeu', "'") + 'END_QUESTION\n')
                        # print(answers_p[0].text.strip())

                        paras.append('\nBEGIN_QUESTION ' + question_h2.text.replace('lâeu', "'") + ' END_QUESTION\n')
                        paras.append(
                            '\nBEGIN_ANSWER ' + answers_p[0].text.strip().replace('lâeu', "'") + ' END_ANSWER\n')
                        # paras.append(answers_p[0].text.strip())
            if title_section:
                title = title_section[0].text.encode('utf8').decode("utf-8").strip()

        if len(paras) > 0:
            main_text = '\n'.join(paras).encode('utf8').decode("utf-8").strip()
            print(main_text)
            paras = []

        record = {
            'RECORD_ID': record_id,
            'AUTHOR': _author,
            'TITLE': title,
            'DATE': _published_date,
            'TEXT': main_text
        }
    except Exception as ex:
        print('Exception in Parse')
        print(str(ex))
        crash_date = time.strftime("%Y-%m-%d %H:%m:%S")
        crash_string = "".join(traceback.format_exception(etype=type(ex), value=ex, tb=ex.__traceback__))
        exception_string = '[' + crash_date + '] - ' + crash_string + '\n'
        print(exception_string)
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
    result = []

    args = sys.argv
    if len(args) == 2:
        LIMIT = args[1]
    else:
        LIMIT = 1

    print('Total links going to be processed: {}'.format(LIMIT))

    TABLE_NAME = 'links'
    DB_PATH = 'ecb_interviews_faulty.db'
    links = get_links()
    conn = sqlite3.connect(DB_PATH)

    for link in links:
        link_id = link[0]
        author = link[1]
        title = link[2]
        post_link = link[3]
        # post_link = 'https://www.ecb.europa.eu/press/inter/date/2015/html/sp151117.en.html'
        # post_link = 'https://www.ecb.europa.eu/press/inter/date/2005/html/sp050121.en.html'
        published_date = link[4]
        section_name = link[5].strip()

        result = parse(link_id, author, post_link, None, published_date, section_name)

        if len(result) > 0:
            record_id = result['RECORD_ID']

            if conn is not None:
                cursor = conn.cursor()
                sql = 'UPDATE {} SET status = 3 where id = {}'.format(TABLE_NAME, record_id)
                cursor.execute(sql)
                conn.commit()

            json_data = json.dumps(result, ensure_ascii=False)
            file_name = '{}_{}_{}.json'.format(section_name, published_date.replace('.', '_'), link_id).replace('/',
                                                                                                                '-')

            # Create folder if it does not exist

            if not os.path.exists('ecb_data'):
                os.makedirs('ecb_data')

            with open('ecb_data/' + file_name, 'w', encoding='utf8') as f:
                f.write(json_data)

            print('Generating the file with name: {}'.format(file_name))
        sleep(5)
