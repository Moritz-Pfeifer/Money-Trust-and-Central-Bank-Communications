import os
import re
import sqlite3
from datetime import datetime

import requests
from bs4 import BeautifulSoup


def fetch(u):
    dates = []
    pdfs = []

    r = requests.get(u, timeout=20)

    if r.status_code == 200:
        html = r.text.strip()
        soup = BeautifulSoup(html, 'lxml')
        pdf_section = soup.select('.pdf')
        links_section = soup.select('.ecb-basicList dt')

        for pdf in pdf_section:
            l = 'https://www.ecb.europa.eu' + pdf['href']
            pdfs.append(l)

        for entry in links_section:
            # date_part = re.sub(r"No\.\s+\d+\s+",'', entry.text)
            date_part = re.sub(r"No\.\s\d", '', entry.text)
            published_date = str(datetime.strptime(date_part, '%d %B %Y')).replace('00:00:00', '').strip()
            dates.append(published_date)

        if len(pdfs) > 0 and len(dates) > 0:
            idx = 0

            for pdf in pdfs:
                if conn is not None:
                    cursor = conn.cursor()
                    l = 'https://www.ecb.europa.eu' + pdf
                    l = pdf
                    published_date = dates[idx]
                    sql = 'INSERT INTO {}(link,published_date,status) VALUES (?,?,0)'.format(TABLE_FETCH)
                    cursor.execute(sql, (l, published_date))
                    conn.commit()
                idx += 1


if __name__ == '__main__':
    DB_PATH = os.path.abspath('.') + '/ecb.db'
    print(DB_PATH)

    TABLE_FETCH = 'links_monthly_bulletin'
    TABLE_FETCH = 'links_economic_bulletin'
    conn = sqlite3.connect(DB_PATH)
    fetch('https://www.ecb.europa.eu/pub/economic-bulletin/html/index.en.html')
