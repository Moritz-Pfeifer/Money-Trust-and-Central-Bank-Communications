import os
import re

from bs4 import BeautifulSoup as bs


def write_txt(data, filename):
    with open(f'{filename}.txt', 'a', encoding='utf-8') as file:
        file.write(data)
        file.write('\n')


for file in os.listdir():

    if '.html' not in file:
        continue
    filename = file.replace('.html', '')
    print(f'Parsing {file}')
    with open(f'{filename}.html', 'r', encoding='utf-8') as file:
        html_file = file.read()

    soup = bs(html_file, 'html.parser')

    par = soup.find_all('p')

    for p in par:
        if 'interview mit' in p.text.lower():
            par_in_heading = 1
            text = ''
            previous_par = p.find_previous('p')
            font_size1 = float(previous_par.find('span').get('style').split('font-size:')[1].split('pt')[0])
            try:
                font_size2 = float(previous_par.find_all('span')[1].get('style').split('font-size:')[1].split('pt')[0])
            except IndexError:
                font_size2 = 0
            """
            Checking the previous two lines for the title
            """
            if font_size1 < 10 or font_size2 < 10:
                previous_previous = previous_par.find_previous('p')
                font_size1_prev = float(
                    previous_previous.find('span').get('style').split('font-size:')[1].split('pt')[0])
                try:
                    font_size2_prev = float(
                        previous_previous.find_all('span')[1].get('style').split('font-size:')[1].split('pt')[0])
                except IndexError:
                    font_size2_prev = 0
                if font_size1_prev < 10 or font_size2_prev < 10:
                    continue
            """
			Checking if this is the whole header. Are there any more lines in the title?            
			"""
            while True:
                new_previous_par = previous_par.find_previous('p')
                font_size1 = float(new_previous_par.find('span').get('style').split('font-size:')[1].split('pt')[0])
                try:
                    font_size2 = float(
                        new_previous_par.find_all('span')[1].get('style').split('font-size:')[1].split('pt')[0])
                except IndexError:
                    font_size2 = 0
                if font_size1 > 10 or font_size2 > 10:
                    previous_par = new_previous_par
                    par_in_heading += 1
                else:
                    break
            text += previous_par.text + '\n'
            element = previous_par.find_next('p')
            while True:
                if 'BUNDESBANK' in element.text or 'AUSZUGE' in element.text:
                    element = element.find_next('p')
                    continue
                try:
                    font_size1 = float(element.find('span').get('style').split('font-size:')[1].split('pt')[0])
                    font_size2 = float(element.find_all('span')[1].get('style').split('font-size:')[1].split('pt')[0])
                    if font_size1 > 10 or font_size2 > 10:
                        if par_in_heading > 1:
                            par_in_heading -= 1
                        elif len(text) > 500:
                            write_txt(text, filename)
                            write_txt('*' * 100, filename)

                            break
                except IndexError:
                    font_size2 = 0
                text += element.text + '\n'
                element = element.find_next('p')

                text = re.sub('\n\d\n', '\n', text)
                text = re.sub('\n\d\d\n', '\n', text)
                #             text = re.sub('\n.*DEUTSCHE(.|\s)* (\d\d\d\d)','',text)
                # print('*' * 100)
        if 'gespr' in p.text.lower():
            par_in_heading = 1
            text = ''
            previous_par = p.find_previous('p')
            font_size1 = float(previous_par.find('span').get('style').split('font-size:')[1].split('pt')[0])
            try:
                font_size2 = float(previous_par.find_all('span')[1].get('style').split('font-size:')[1].split('pt')[0])
            except IndexError:
                font_size2 = 0
            """
			Checking the previous two lines for the title
            """
            if font_size1 < 10 or font_size2 < 10:
                previous_previous = previous_par.find_previous('p')
                font_size1_prev = float(
                    previous_previous.find('span').get('style').split('font-size:')[1].split('pt')[0])
                try:
                    font_size2_prev = float(
                        previous_previous.find_all('span')[1].get('style').split('font-size:')[1].split('pt')[0])
                except IndexError:
                    font_size2_prev = 0
                if font_size1_prev < 10 or font_size2_prev < 10:
                    continue
            """
            Checking if this is the whole header. Are there any more lines in the title?

            """
            while True:
                new_previous_par = previous_par.find_previous('p')
                font_size1 = float(new_previous_par.find('span').get('style').split('font-size:')[1].split('pt')[0])
                try:
                    font_size2 = float(
                        new_previous_par.find_all('span')[1].get('style').split('font-size:')[1].split('pt')[0])
                except IndexError:
                    font_size2 = 0
                if font_size1 > 10 or font_size2 > 10:
                    previous_par = new_previous_par
                    par_in_heading += 1
                else:
                    break
            text += previous_par.text + '\n'
            element = previous_par.find_next('p')
            while True:
                if 'BUNDESBANK' in element.text or 'AUSZUGE' in element.text:
                    element = element.find_next('p')
                    continue
                try:
                    font_size1 = float(element.find('span').get('style').split('font-size:')[1].split('pt')[0])
                    font_size2 = float(element.find_all('span')[1].get('style').split('font-size:')[1].split('pt')[0])
                    if font_size1 > 10 or font_size2 > 10:
                        if par_in_heading > 1:
                            par_in_heading -= 1
                        elif len(text) > 500:
                            write_txt(text, filename)
                            write_txt('*' * 100, filename)
                            break
                except IndexError:
                    font_size2 = 0
                text += element.text + '\n'
                element = element.find_next('p')

                text = re.sub('\n\d\n', '\n', text)
                text = re.sub('\n\d\d\n', '\n', text)
                #             text = re.sub('\n.*DEUTSCHE(.|\s)* (\d\d\d\d)','',text)
                # print('*' * 100)

    """
    gespräch mit
    """
