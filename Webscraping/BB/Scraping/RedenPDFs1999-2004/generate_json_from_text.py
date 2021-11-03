"""
This script reads the text files in "txt" folder and generate required JSON fields
"""
import os
import re
from time import sleep

from bs4 import BeautifulSoup


def fetch_author(processed_out):
    _author = []

    author_list = list()
    author_list.append('Weidmann')
    author_list.append('Jens')
    author_list.append('Balz')
    author_list.append('Buch')
    author_list.append('Claudia')
    author_list.append('Welteke')
    author_list.append('Ernst')
    author_list.append('Stark')
    author_list.append('Jürgen')
    author_list.append('Weber')
    author_list.append('Axel A')
    author_list.append('Dombret')
    author_list.append('Andreas')
    author_list.append('Würmeling')
    author_list.append('Joachim')
    author_list.append('Carl-Ludwig')
    author_list.append('Zeitler')
    author_list.append('Franz')
    author_list.append('Christoph')

    try:
        for p in processed_out:
            for author in author_list:
                if author in p:
                    _author.append(author)
    except Exception as ex:
        print('Exception in fetch_author')
        print(str(ex))
    finally:
        return ', '.join(_author)


def fetch_title(processed_out):
    _title = None

    try:
        # if 'Sendesperrfri' in processed_out: processed_out.remove('Sendesperrfri')
        # Straße

        processed_out = [x for x in processed_out if not x.startswith('Sendesperrfri') and 'Straße' not in x]

        _title = max(processed_out, key=len)
    except Exception as ex:
        print('Exception in fetch_date')
        print(str(ex))
    finally:
        return _title


def fetch_date(processed_out):
    _date = None
    regex = r"Deutsche Bundesbank,\s(\d+).(\d+).(\d+)"
    regex = r"Deutsche Bundesbank,\s(\d+.\d+.\d+)"
    is_found = False

    try:
        for o in processed_out:
            test_str = o

            matches = re.finditer(regex, test_str, re.MULTILINE)

            for matchNum, match in enumerate(matches, start=1):
                for groupNum in range(0, len(match.groups())):
                    groupNum += 1
                    _date = match.group(groupNum)
                    is_found = True
            if is_found:
                break
    except Exception as ex:
        print('Exception in fetch_date')
        print(str(ex))
    finally:
        return _date


def parse():
    pass


def process_1st_page(xml_file_path):
    needed = []
    txt_file_name = ''

    print('Processing file...{}'.format(xml_file_path))

    ignore = ['against delivery', 'BUt~DESBANK', 'DEUTSCHE', 'BUNDESBANK']

    with open(xml_file_path, encoding='utf8') as fl:
        needed = []
        data = fl.read()
        soup = BeautifulSoup(data, 'lxml')
        entries = soup.select('LTTextBoxHorizontal')
        idx = 0
        val = None

        for entry in entries:
            if entry.text.strip() != '':
                for ig in ignore:
                    txt = entry.text.strip().replace('  ', '').replace('\n', ' ')
                    if ig not in txt and txt not in needed:
                        needed.append(txt)
            idx += 1

    return needed


if __name__ == '__main__':
    PATH = '/Clients/Moritz_sciencespo/pdfs/sep_pdfs/xml/'
    for filename in os.listdir(PATH):
        if filename.endswith(".xml"):
            processed_out = process_1st_page(os.path.join(PATH, filename))
            published_date = fetch_date(processed_out)
            title = fetch_title(processed_out)
            author = fetch_author(processed_out)
            print(author)
            print('--------------------------------------')
            break
        sleep(2)
