import re
import sqlite3
import sys
from datetime import datetime
from time import sleep

import requests
from bs4 import BeautifulSoup


def generate_urls(input_url):
    urls = []
    # https://www.ecb.europa.eu/press/inter/date/2007/html/index_include.en.html
    for y in range(2019, 1998, -1):
        list_url = input_url.replace(str(2019), str(y))
        urls.append(list_url)

    return urls


def extract_speech_author(author_name):
    _author = '-'

    try:
        author_parts = author_name.split(':')
        if len(author_parts) > 0:
            _author = author_parts[0].strip()
    except Exception as ex:
        print('Exception in extract_speech_author')
        print(str(ex))
    finally:
        return _author


def extract(listing_url):
    headers = {
        'Connection': 'keep-alive',
        'Pragma': 'no-cache',
        'Cache-Control': 'no-cache',
        'Upgrade-Insecure-Requests': '1',
        'DNT': '1',
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36',
        'Sec-Fetch-User': '?1',
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3',
        'Sec-Fetch-Site': 'same-origin',
        'Sec-Fetch-Mode': 'navigate',
        'Referer': 'https://www.ecb.europa.eu/press/html/index.en.html',
        'Accept-Encoding': 'gzip, deflate, br',
        'Accept-Language': 'en-US,en;q=0.9,ur;q=0.8',
    }

    base_url = 'https://www.ecb.europa.eu'
    published_date = '-'
    title = '-'
    author = '-'
    section = '-'
    totals = []

    print('Processing...{}'.format(listing_url))

    r = requests.get(listing_url, headers=headers, timeout=30)

    if r.status_code == 200:
        DB_PATH = 'ecb_monetary_policy_decision.db'
        conn = sqlite3.connect(DB_PATH)

        html = r.text.strip()
        soup = BeautifulSoup(html, 'lxml')
        listing_section_dates = soup.select('body > dt')
        listing_section_others = soup.select('body > dd')

        if 'inter' in listing_url:
            section = "Interviews"
        
        if 'pr' in listing_url:
        	section = "Press Releases"
        	
        if 'key' in listing_url:
            section = "Speeches"
        
        if 'govcdec' in listing_url:
            section = "Monetary Policy Decisions"

        print('\nSection detected...{}'.format(section))

        totals.append(len(listing_section_dates))
        totals.append(len(listing_section_others))

        total = min(totals)

        for idx in range(0, total):
            published_date = listing_section_dates[idx].text.strip()
            published_date = re.sub(r'No.\s\d+\s', '', published_date)
            #published_date = datetime.strptime(published_date, '%d/%M/%Y')
            published_date = datetime.strptime(published_date, '%d %B %Y')
            published_date = published_date.strftime('%Y-%m-%d')

            # if listing_section_others[idx].select('.doc-title'):
            # title = listing_section_others[idx].select('.doc-title')[0].text.strip()
            title = listing_section_others[idx].select('.doc-title')[0].text.strip()

            if listing_section_others[idx].select('.doc-subtitle'):
                author = listing_section_others[idx].select('.doc-subtitle')[0].text

                # if 'Speech by' in author:
                author = extract_speech_author(title)
                author = author.encode('utf8').decode("utf-8").strip()

            link = base_url + listing_section_others[idx].select('.doc-title > a')[0]['href'].strip()

            if conn is not None:
                cursor = conn.cursor()
                sql = 'INSERT INTO links(title,author,link,published_date,section,status) VALUES (?,?,?,?,?,0)'
                cursor.execute(sql, (title, author, link, published_date, section))
                conn.commit()

                # print(published_date, title, link, author)
                # print(len(listing_section_dates), len((listing_section_others)))


if __name__ == '__main__':
    u = 'https://www.ecb.europa.eu/press/govcdec/mopo/2019/html/index_include.en.html'
    u = 'https://www.ecb.europa.eu/press/pressconf/2019/html/index_include.en.html'
    u = 'https://www.ecb.europa.eu/press/pr/date/2019/html/index_include.en.html'
    u = 'https://www.ecb.europa.eu/pub/economic-bulletin/html/index_include.en.html'
    u = 'https://www.ecb.europa.eu/press/key/date/2019/html/index_include.en.html'
    u = 'https://www.ecb.europa.eu/press/inter/date/2019/html/index_include.en.html'

    till = 1999

    args = sys.argv

    if len(args) != 2:
        print(
            'Incorrect format: The correct format is: python extract.py <section URL with year 2019>. \nFor example:- https://www.ecb.europa.eu/press/inter/date/2019/html/index_include.en.html')
        exit()

    u = args[1]
    if '2019' not in u:
        print('Error. The URL must be of year 2019')
        exit()

    # u = 'https://www.ecb.europa.eu/press/inter/date/2019/html/index_include.en.html'
    listing_urls = generate_urls(u)

    if len(listing_urls) > 0:
        for listing_url in listing_urls:
            extract(listing_url)
            sleep(5)
    print('DONE')
