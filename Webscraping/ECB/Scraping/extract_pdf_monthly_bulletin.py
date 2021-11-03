import os
import sqlite3

import requests
from bs4 import BeautifulSoup


def fetch(u):
    r = requests.get(u, timeout=20)
    if r.status_code == 200:
        html = r.text.strip()
        soup = BeautifulSoup(html, 'lxml')
        links_section = soup.select('.pdf')
        for link in links_section:
            if conn is not None:
                cursor = conn.cursor()
                l = 'https://www.ecb.europa.eu' + link['href']
                sql = 'INSERT INTO {}(link,status) VALUES (?,0)'.format(TABLE_FETCH)
                cursor.execute(sql, (l,))
                conn.commit()


if __name__ == '__main__':
    DB_PATH = os.path.abspath('.') + '/ecb/ecb.db'

    TABLE_FETCH = 'links_monthly_bulletin'
    conn = sqlite3.connect(DB_PATH)
    fetch('https://www.ecb.europa.eu/pub/economic-bulletin/mb/html/index.en.html')
