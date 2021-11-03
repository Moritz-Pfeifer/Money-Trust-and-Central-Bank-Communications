import json
import settings_helper
import datetime
import os
import database as _db
from colorama import Fore, Style, Back
from colorama import init
init()

sections = ['Rapport Annuel', 'Communiqués de presse"']
settings = settings_helper.load_settings('Settings.json')
db = _db.Database(name='bank_of_france.db')

for section in sections:
    print(Fore.YELLOW + f'Fetching records for section: {section}..')
    records = db.get_section(table='records', _type=section)
    print(Fore.YELLOW + f'Fetched {len(records)} records..')
    for record_index, record in enumerate(records):
        file_name = f'{record["section"].replace(" ", "_")}_{str(datetime.datetime.strptime(record["postedOn"], "%Y-%m-%d %H:%M:%S")).split()[0].replace("-", "_")}'
        print(Fore.YELLOW + f'Generating file {record_index+1}/{len(records)} : {file_name}.json')
        with open(os.path.join('JSON_Files', section.replace(" ", "_"), file_name + '.json'), 'w') as fp:
            json.dump(record, fp)
    print(Fore.GREEN + f'Successfully generated {len(records)} files for section: {section}..\n')

db.close()

