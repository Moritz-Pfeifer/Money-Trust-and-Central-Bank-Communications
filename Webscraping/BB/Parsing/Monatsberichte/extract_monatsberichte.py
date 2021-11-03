import sqlite3
import sys
from time import sleep

import requests
from bs4 import BeautifulSoup


def store(_author, _publish_date, _title, _post_link, _link_type, _section):
    TABLE_NAME = 'links'
    DB_PATH = 'bundesbank_monatsberichte.db'

    try:
        conn = sqlite3.connect(DB_PATH)
        if conn is not None:
            cursor = conn.cursor()
            sql = 'INSERT INTO {} (author,published_date,title,post_link,link_type,section,status) VALUES (?,?,?,?,?,?,0)'.format(
                TABLE_NAME)

            cursor.execute(sql, (_author, _publish_date, _title, _post_link, _link_type, _section))
            conn.commit()
            # print('Stored')
    except Exception as ex:
        print('Error while storing')
        print(ex)


def extract(url, section):
    records = []
    total_pages = 0
    search_url = None
    state = None
    author = 0
    title = None
    publish_date = None
    post_link = None
    link_type = 'html'

    section_code = {'reden': '729950', 'pressenotizen': '724000', 'interviews': '729904', 'monatsberichte': '732090'}

    try:
        print('Processing...' + url + '\n\n')

        session = requests.session()
        r = session.get(url, headers=headers, timeout=30)

        if r.status_code == 200:
            html = r.text.strip()
            soup = BeautifulSoup(html, 'lxml')
            page_count_section = soup.select('#searchres')
            state_section = soup.select('#state')

            if state_section:
                state = state_section[0]['value'].strip()

            if page_count_section:
                total_records = page_count_section[0].text.replace('Beiträge', '')
                total_pages = round(int(total_records) / 10)

            print('Total Pages Found {}'.format(total_pages))

            # Iterating Records
            entries = soup.select('.resultlist .resultlist__item')

            for entry in entries:
                title_section = entry.select('.h2')
                date_section = entry.select('.teasable__date')
                author_section = entry.select('.teasable__authors')
                post_link_section = entry.select('.teasable__link')
                post_heading = entry.select('.teasable__link > .link__label')

                if author_section:
                    author = author_section[0].text.strip().replace('|', '').replace('\n', '')

                if date_section:
                    publish_date = date_section[0].text.strip()
                
                if title_section:
                    title = title_section[0].text.strip()

                if post_link_section:
                    post_link = post_link_section[0]['href']
                    if 'https://www.bundesbank.de/' not in post_link:
                        post_link = 'https://www.bundesbank.de' + post_link

                    if '.pdf' in post_link:
                        link_type = 'pdf'
                    else:
                        link_type = 'html'

                print('Title = {}\n Publish Date = {}\n Post Link= {}\n Author= {}\n Section = {}\n'.format(
                    title_section[0].text.strip().replace('\n', ''),
                    publish_date,
                    title,
                    post_link,
                    author,
                    section
                ))

                # print(title_section[0].text.strip().replace('\n', ''), author, publish_date, post_link,
                #       link_type)

                store(author, publish_date, title, post_link, link_type, section)

            if state is not None and total_pages > 0:
                print('Processing pages..')

                for p in range(2, total_pages + 1):
                    sleep(5)
                    print('Page No..{}'.format(p))

                    search_url = 'https://www.bundesbank.de/action/de/{}/bbksearch?state={}&pageNumString={}'.format(
                        section_code[section], state, p - 1)

                    r = session.get(search_url, headers=headers, timeout=30)
                    print('==============================================')

                    if r.status_code == 200:
                        html = r.text.strip()
                    soup = BeautifulSoup(html, 'lxml')

                    # Iterating Records
                    entries = soup.select('.resultlist .h2')

                    entries = soup.select('.resultlist .resultlist__item')

                    for entry in entries:
                        title_section = entry.select('.h2')
                        date_section = entry.select('.teasable__date')
                        author_section = entry.select('.teasable__authors')
                        post_link_section = entry.select('.teasable__link')

                        if author_section:
                            author = author_section[0].text.strip().replace('|', '').replace('\n', '')

                        if date_section:
                            publish_date = date_section[0].text.strip()
                            
                        if title_section:
                            title = title_section[0].text.strip()

                        if post_link_section:
                            post_link = post_link_section[0]['href']
                        if 'https://www.bundesbank.de/' not in post_link:
                            post_link = 'https://www.bundesbank.de' + post_link

                        if '.pdf' in post_link:
                            link_type = 'pdf'
                        else:
                            link_type = 'html'

                        print('Title = {}\n Publish Date = {}\n Post Link= {}\n Author= {}\n Section = {}\n'.format(
                            title_section[0].text.strip().replace('\n', ''),
                            publish_date,
                            title,
                            post_link,
                            author,
                            section
                        ))

                        store(author, publish_date, title, post_link, link_type, section)

    except Exception as ex:
        print(ex)
    finally:
        return records


if __name__ == '__main__':
    allowed_sections = ['reden', 'pressenotizen', 'interviews', 'monatsberichte']
    args = sys.argv
    if len(args) != 2:
        print(
            'Incorrect format. The correct format is: python extract.py <section> where section could be one of them: pressenotizen,reden,interviews, and monatsberichte')
        exit()

    section_name = args[1].lower()
    if section_name not in allowed_sections:
        print('Invalid section name. Valid sections are {}'.format(','.join(allowed_sections)))
        exit()

    headers = {
        'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3',
        'Accept-Encoding': 'gzip, deflate, br',
        'Accept-Language': 'en-US,en;q=0.9,ur;q=0.8',
        'Cache-Control': 'no-cache',
        'Pragma': 'no-cache',
        'Referer': 'https://google.com',
        'Upgrade-Insecure-Requests': '1',
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36'
    }

    extract('https://www.bundesbank.de/action/de/732090/bbksearch?state=H4sIAAAAAAAAAGVQQWrDMBD8StmzD4raUNfH0BgKpTUkt9KDbG9s0Y3kSuuDMfl7V6Q2Db3tDDPLzMzwPWKYoADIoOmNc0gvLRRuJMqg9c1xGnCBJ9Mgl5YYQ1y4wXT4Np6hUBlEH3g3PRsWx8lQxF-LiOeL3Itzhsf7XCsFxQfAZyZIqyedkN7qbf6wcvlVIV72XUdYpm-76X1g692SoLccKwyVBIFio26IAwfrOmm3UZAChMivyJJiMRsaelMji9g6k97unakJ27XBf0UVMCJhw6uUwyjKVoqXwZ_X9QQf_V908BRKiyQWqOuvtFei4TrdLXnXYmzg8gN-Ws7PoQEAAA&pageNumString=1', section_name.strip())
