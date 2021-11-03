import json
import os
import sqlite3
import sys
import time
import traceback
from time import sleep

import requests
from bs4 import BeautifulSoup
import re

def get_links(DB_PATH):
    ids = []
    records = []

    try:
        TABLE_NAME = 'links'
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
            content_section = soup.select('article > p')
                    
            if content_section:
                questionStarted = False
                prevBodyTitle = ''
                for c in content_section:
                    strong = c.findAll('strong')
                    em = c.findChildren('em', recursive=False)
                    bodyTitle = ''
                    

                    if(len(strong) == 1 and len(em) == 0):

                        if(str(c) == "<p>"+str(strong[0])+"</p>"):
                            bodyTitle = "QUESTION"
                            questionStarted = True
                        else:
                            bodyTitle = "ANSWER"

                    elif(len(strong) == 1 and len(em) == 1):
                        if(str(c) == "<p>"+str(strong[0])+str(em[0])+"</p>"):
                            bodyTitle = "QUESTION"
                            questionStarted = True
                    else:
                        bodyTitle = "ANSWER"

                    if(questionStarted):
                        if(bodyTitle != prevBodyTitle):
                            paras.append(bodyTitle)
                            
                        body = re.sub("<.*?>", "", str(c))
                        paras.append(body)                    
                        prevBodyTitle = bodyTitle
                    else:
                        body = re.sub("<.*?>", "", str(c))
                        paras.append(body)                        

            if title_section:
                title = title_section[0].text.encode('utf8').decode("utf-8").strip()

        if len(paras) > 0:
            main_text = ''.join(paras).encode('utf8').decode("utf-8").strip()
            paras = []
        main_text = main_text.replace('QUESTION','\n\nBEGIN_QUESTION')
        main_text = main_text.replace('ANSWER','END_QUESTION\n\n')
        print(main_text)

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
    DB_PATH = 'ecb_press_conferences.db'
    links = get_links(DB_PATH)
    conn = sqlite3.connect(DB_PATH)

    for link in links:
        print(link)
        link_id = link[0]
        author = link[1]
        title = link[2]
        post_link = link[3]
        #post_link = 'https://www.ecb.europa.eu/press/pr/date/2019/html/ecb.pr190912_2~a0b47cd62a.en.html'
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
