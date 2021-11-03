import glob
import os
from tika import parser
import json
import datetime
import datefinder


def extract_author(content):
    possibles = ['Jean-Claude Trichet', 'Christian Noyer', 'François Villeroy de Galhau', 'Hervé Hannoun',
                 'Jean-Paul Redouin', 'Jean-Pierre Landau', 'Anne Le Lorier', 'Robert Ophèle', 'Denis Beau',
                 'Sylvie Goulard']
    possibles = [x.lower() for x in possibles]
    for author in possibles:
        if author in content.lower():
            return author

    # not found
    return None


def extract_section(title):
    title = title.lower()
    if "discours" in title:
        return "discours"
    elif "interview" in title:
        return "interview"
    elif "communique" in title:
        return "communique-de-presse"
    return "autres_interventions"


def try_parse_date(string, fuzzy=False):
    string = string.strip()
    string = string.replace('_', '-')

    matches = list(datefinder.find_dates(string))

    if len(matches) < 1:
        return None

    match = matches[0]
    match_str = str(match)
    return match_str


def parse_file_name(file_name):
    # Interviews_24_10_2014
    file_name = file_name.split('.')[0]
    section = extract_section(file_name)
    date = try_parse_date(file_name)
    return section, date


count = 0
for root, dirs, files in os.walk(os.path.join(os.getcwd(), 'Banque_de_France_scans')):
    for file in files:
        if file.endswith(".pdf"):
            this_file_path = os.path.join(root, file)
            print(f'Processing file: {this_file_path}')
            raw = parser.from_file(this_file_path)
            raw['content'] = raw['content'].replace("\n", "").replace("\\", "")
            section, date = parse_file_name(os.path.basename(this_file_path))
            if date is None:
                date_obj = datetime.datetime.strptime(raw['metadata']['Creation-Date'], "%Y-%m-%dT%H:%M:%SZ")
            else:
                date_obj = datetime.datetime.strptime(date, '%Y-%m-%d %H:%M:%S')

            file_name = section + "_" + str(date_obj.year) + "_" + "{0:0=2d}".format(date_obj.month) + "_" + "{0:0=2d}".format(date_obj.day)
            with open(os.path.join('JSON_Files', file_name + '.json'), 'w') as fp:
                json.dump({
                    "section": section,
                    "date": "{0:0=2d}".format(date_obj.day) + "." + "{0:0=2d}".format(date_obj.month) + "." + str(date_obj.year),
                    "content": raw['content'],
                    "author": extract_author(raw['content'])
                }, fp)
            count = count + 1

print(f'Generated {count} files..')