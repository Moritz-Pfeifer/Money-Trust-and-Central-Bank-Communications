"""
 The script reads PDF's XML version files and parse required info
"""
import json
import os
import re
import traceback
from time import sleep

from bs4 import BeautifulSoup


def fetch_author(processed_out):
    _author = []

    author_list = list()
    author_list.append('dr.')
    author_list.append('prof.')
    author_list.append('Weidmann')
    author_list.append('Jens')
    author_list.append('Balz')
    author_list.append('Buch')
    author_list.append('Claudia')
    author_list.append('Welteke')
    author_list.append('Ernst')
    author_list.append('Hans')
    author_list.append('Tietmeyer')
    author_list.append('Stark')
    author_list.append('Jürgen')
    author_list.append('Weber')
    author_list.append('Axel A')
    author_list.append('Dombret')
    author_list.append('Andreas')
    author_list.append('Würmeling')
    author_list.append('Joachim')
    author_list.append('Meister')
    author_list.append('Edgar')
    author_list.append('Remsparger')
    author_list.append('Hermann')
    author_list.append('Carl-Ludwig')
    author_list.append('Zeitler')
    author_list.append('Franz')
    author_list.append('Christoph')

    try:
        for p in processed_out:
            for author in author_list:
                if author.lower() in p.lower():
                    _author.append(author)
    except Exception as ex:
        print('Exception in fetch_author')
        print(str(ex))
    finally:
        return ', '.join(_author)


def fetch_title(processed_out):
    _title = None

    try:
        list_out = ['publizistischer', 
        			'Montag', 
        			'Dienstag',
        			'Mittwoch',
        			'Donnerstag',
        			'Freitag',
        			'Samstag',
        			'Sonntag',
        			'Mitglied', 
        			'gesprochene', 
        			'Vortrag', 
        			'Rede',
        			'1999',
        			'2000',
        			'2001',
        			'2002',
        			'2003',
        			'2004', 
        			'Ansprache', 
        			'Grußwort', 
        			'Straße', 
        			'Begrüßungsansprache',
        			'www.bundesbank.de', 
        			'Wilhelm-Epstein-Straße', 
        			'anlässlich',
        			'anläßlich',
        			'Sonstige',
        			'Main', 
        			'60431']    
        processed_out = [x for x in processed_out if not x.startswith('Sendesperrfri') and not any(i in x for i in list_out)] 
        _title = max(processed_out, key=len)
        _title = re.sub(r'\W+', ' ', _title)
    except Exception as ex:
        print('Exception in fetch_date')
        print(str(ex))
    finally:
        return _title


def fetch_date(processed_out):
    _date = None
    regex = r"Deutsche Bundesbank,\s(\d+).(\d+).(\d+)"
    regex = r"(\d+.\d+.\d+)"
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

def process_init_page(page_lines):
    plines = []

    _title = ''
    _date = ''
    _author = ''

    try:
        for p in page_lines:
            plines.append(p.text.strip())

            _title = fetch_title(plines)
            _date = fetch_date(plines)
            _author = fetch_author(plines)
    except Exception as ex:
        print('Exception in process_init_page')
        print(str(ex))
    finally:
        return _title, _date, _author


def dump_text(page_object, titles_info):
    pages = []
    meta_info = []
    page_lines = []
    speeches = []
    page_no = 0
    speech = {}
    speech_no = 0

    try:
        # First get Initial Pages Numbers
        init_pages = list(titles_info.keys())

        for page in page_object:
            page_no = page['pageid']
            print('Processing Page No: {}'.format(page_no))

            # Detecting Title Page
            if page_no in init_pages:
                print('TITLE PAGE FOUND')
                meta_info = titles_info[page_no]
                meta_info['TEXT'] = '-'
                meta_info['PDF_TEXT'] = ''.join(pages)
                speech = meta_info
                speeches.append(speech)
                pages = []

            if page_no not in init_pages:
                speech_no += 1

                lines = page.select('LTTextLineHorizontal'.lower())
                if len(lines) == 0:
                    print('Did not get')
                    exit()

                for line in lines:
                    text = line.text.strip()
                    text = text.encode('utf8').decode("utf-8").strip()
                    #print('Printing Text of page no: {}'.format(page_no))
                    #print(text)
                    page_lines.append(text)

                if len(page_lines) > 0:
                    #print('Total lines found = {} on Page No: {}.'.format(len(page_lines), page_no))

                    # constructing a page of lines
                    page = ' '.join(page_lines)
                    page_lines = []
                    # adding page content in a page LIST
                    pages.append(page)
                    speech['PDF_TEXT'] = ''.join(pages)
        pages = []
    except Exception as ex:
        print('Exception in dump_text')
        print(str(ex))
        print(traceback.format_exc())
    finally:
        return speeches


"""
    This funciton gets the meta info of each speech
    @:param xml_file_path
    @:returns content, pages
"""


def process_file(xml_file_path):
    data = None
    pages = []
    lines = []
    init_pages = []
    pdf_data = []
    page_info = ()
    title_page_no = None
    content = {}

    try:
        print('Processing file...{}'.format(xml_file_path))

        with open(xml_file_path, encoding='utf8') as fl:
            data = fl.read()

        soup = BeautifulSoup(data, 'lxml')
        pages = soup.select('LTPage'.lower())

        for page in pages:
            lines = page.select('LTTextLineHorizontal'.lower())
            # print('Page No {}'.format(page['pageid']))

            for line in lines:
                txt = line.text.strip()
                list_title_page = ['Check against delivery',
                                   'Axel A. Weber',
                                   'Mitglied des Vorstands',
                                   'Seite 1 von',
                                   'Page 1 of']
                if 'Es gilt das' in txt and 'gesprochene Wort' or any(i in txt for i in list_title_page):
                    title, date, author = process_init_page(lines)
                    init_pages.append({page['pageid']: (title, date, author)})
                    content[page['pageid']] = {'AUTHOR': author, 'TITLE': title, 'DATE': date,
                                               'SECTION': 'reden', 'RECORD_ID': date}

    except Exception as ex:
        print('Exception in process_file')
        print(str(ex))
    finally:
        return content, pages, date


def process(pdf_file):
    try:
        FOLDER_NAME = pdf_file.replace('.xml', '')

        # pdf_file = 'Reden_1999_Jul - Sep_full.xml'
        FOLDER_NAME = pdf_file.replace('.xml', '').replace('/Users/MoritzPfeifer/Desktop/PDF_DATA_NEW/RedenPDFs1999-2004/xml/', '')

        # Here _date has been initialized
        title_page_info, pages_object, date = process_file(pdf_file)

        if len(pages_object) > 0:
            if not os.path.exists(FOLDER_NAME):
                os.makedirs(FOLDER_NAME)

                print('FOLDER_NAME = {} CREATED...'.format(FOLDER_NAME))

        resultant = dump_text(pages_object, title_page_info)

        speech_idx = 0
        for result in resultant:
            speech_idx += 1
            speech_file = 'reden_{}_{}.json'.format(date.replace('.','_'), speech_idx)
            #speech_file = 'speech_{}.json'.format(speech_idx) 
            
            with open(FOLDER_NAME + '/' + speech_file, 'a+', encoding='utf8') as f_speech:
                f_speech.write(json.dumps(result, ensure_ascii=False))
    except Exception as ex:
        print('Exception in process file')
        print(str(ex))
    finally:
        print('DONE')


if __name__ == '__main__':
    PATH = '/Users/MoritzPfeifer/Desktop/PDF_DATA_NEW/RedenPDFs1999-2004/xml/'

    # pdf_file = 'pdfxml.xml'

    faulty_files = ['Reden_2003_Sep-Okt_full.xml', 'Reden_2000_Jul_Dez_full.xml']

    for filename in os.listdir(PATH):
        if filename.endswith("_full.xml"):
            #if filename in faulty_files:
                #print(filename)
                """
                TODO: Remove this shit
                """
                process(os.path.join(PATH, filename))
                print('--------------------------------------')
        sleep(1)