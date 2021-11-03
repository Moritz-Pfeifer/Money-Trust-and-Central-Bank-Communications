import pandas as pd
from pandas import DataFrame
import os
from random import randint
import re
from bs4 import BeautifulSoup
import selenium
import json
import mysql.connector
from sqlalchemy import create_engine
from datetime import datetime
from time import sleep
from selenium import webdriver
from selenium.webdriver.support.ui import Select
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.alert import Alert
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.options import Options
options = Options()
#options.add_experimental_option('prefs', {'intl.accept_languages': 'en,en_US'})

prefs = {
  "translate_whitelists": {"fr":"en", "de":"en", "es":"en", "sv":"en", "cs":"en", "pt":"en", "pl":"en"},
  "translate":{"enabled":"true"}
}
options.add_experimental_option("prefs", prefs)
options.add_argument('--disable-notifications')
options.add_argument('--headless')
options.add_argument('--ignore-certificate-errors')
options.add_argument('--ignore-ssl-errors')
options.add_argument('--disable-gpu')
options.add_argument("--log-level=3") 
path = os.getcwd()
#chrome_path = path+'\\chromedriver_win32\\chromedriver.exe'
chrome_path = path+r'/chromedriver_mac64/chromedriver'
browser = webdriver.Chrome(executable_path=chrome_path, options = options)

#Authentication
def authenticate():
	browser.get('https://global-factiva-com.acces-distant.sciencespo.fr/')
	browser.execute_script("window.open('https://www.sciencespo.fr/bibliotheque/fr/rechercher/eressources/#/resources?query=proquest')")
	browser.get('https://acces-distant.sciencespo.fr/fork?https://global.factiva.com/en/sess/login.asp?XSID=S00ZczkZWva5DEs5DEnOT2oNpQuMpByMHn0YqYvMq382rbRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQQAA')
	browser.switch_to.window(browser.window_handles[0])
	username = browser.find_element_by_id('username')
	username.send_keys('moritz.pfeifer@sciencespo.fr')
	password = browser.find_element_by_id('password')
	password.send_keys('P@r!5N&ncYB3r(1n')
	browser.find_element_by_class_name('btn-submit').click()

#search function
def search(name):
	search = browser.find_element_by_id('ftx')
	search.send_keys(name)
	
#configuring filters
def filters():
	#subject
	subject = browser.find_elements_by_class_name('pnlTabArrow')[4].click()
	sleep(7)
	#content type
	browser.find_element_by_xpath('//*[@id="nsMnu"]/ul/li[2]/span/span').click()
	sleep(7)
	#interview
	browser.find_element_by_xpath('//*[@id="nsMnu"]/ul/li[2]/div/ul/li[19]/a[1]').click()
	#more options
	browser.find_elements_by_class_name('pnlTabArrow')[-1].click()
	select = Select(browser.find_element_by_id('sfd'))
	select.select_by_visible_text('Headline and Lead Paragraph')
	#configure sorted by
	select = Select(browser.find_element_by_id('hso'))
	select.select_by_visible_text('Relevance')
	#configuring date range
	select = Select(browser.find_element_by_id('dr'))
	select.select_by_visible_text('Enter date range...')
	from_day = browser.find_element_by_id('frd')
	from_day.send_keys('01')
	from_month = browser.find_element_by_id('frm')
	from_month.send_keys('01')
	from_year = browser.find_element_by_id('fry')
	from_year.send_keys('1999')
	to_day = browser.find_element_by_id('tod')
	to_day.send_keys('01')
	to_month = browser.find_element_by_id('tom')
	to_month.send_keys('01')
	to_year = browser.find_element_by_id('toy')
	to_year.send_keys('2004')
	#click search
	browser.find_element_by_xpath('//*[@id="btnSBSearch"]/div/span').click()

def get_interview(url):
	browser.get(url)
	soup = BeautifulSoup(browser.page_source, 'html.parser')
	paragraph = soup.find_all('p', class_ = 'articleParagraph frarticleParagraph')
	if not paragraph:
		paragraph = soup.find_all('p', class_ = 'articleParagraph dearticleParagraph')
	if not paragraph:
		paragraph = soup.find_all('p', class_ = 'articleParagraph esarticleParagraph')
	if not paragraph:
		paragraph = soup.find_all('p', class_ = 'articleParagraph svarticleParagraph')
	if not paragraph:
		paragraph = soup.find_all('p', class_ = 'articleParagraph csarticleParagraph')
	if not paragraph:
		paragraph = soup.find_all('p', class_ = 'articleParagraph enarticleParagraph')
	if not paragraph:
		paragraph = soup.find_all('p', class_ = 'articleParagraph ptarticleParagraph')
	if not paragraph:
		paragraph = soup.find_all('p', class_ = 'articleParagraph plarticleParagraph')
	paragraphs = [paragraph[p].text for p in range(0,len(paragraph))]
	interview_string = "".join(paragraphs)
	return interview_string, paragraph

def get_links():
	base_url = "https://global-factiva-com.acces-distant.sciencespo.fr/"
	soup = BeautifulSoup(browser.page_source, 'html.parser')
	div = soup.find('div', class_ = 'headlines')
	a_tag = div.find_all('a', href=True)
	url_list = [base_url+a_tag[u]['href'] for u in range(0, len(a_tag), 2)]
	sources = [a_tag[s] for s in range(1, len(a_tag),2)]
	return (url_list, sources)

def is_interview(interview_string):
	question_marks = re.findall("\?", interview_string)
	if len(question_marks) > 3:
		return 'True'
	else:
		return 'False'

def write_to_db(username, password, host, database):
	conn = mysql.connector.connect(user=username, password = password, host= host, database = 'ecb_interviews')
	cursor = conn.cursor()
	engine = create_engine("mysql+pymysql://{user}:{pw}@localhost/{db}".format(user = username, pw = password, db = database))
	df.to_sql('InterviewLinks'.lower(), con = engine, if_exists = 'replace', chunksize = 1000, index_label =['Interview Links'], index=False)
	conn.close()
	cursor.close()

with open('config.json') as config_file:
	data = json.load(config_file)

username = data['user']
password = data['password']
host = data['host']
database = data['database']


name = input("Enter name: ")
allowed_names = ['Wim Duisenberg', 'Christian Noyer', 'Sirkka Hämäläinen', 'Eugenio Domingo Solans',
                 'Tommaso Padoa-Schioppa', 'Otmar Issing', 'Lucas Papademos', 'Jean-Claude Trichet',
                 'Gertrude Tumpel-Gugerell', 'José Manuel González-Paramo', 'Lorenzo Bini Smaghi',
                 'Jürgen Stark']
if name not in allowed_names:
    print('Invalid section name. Valid sections are {}'.format(', '.join(allowed_names)))
    name = input("Enter name:\n")
authenticate()
sleep(60)
search(name)
filters()
sleep(60)
links, sources = get_links()

#getting interview links into a list

interview_links = []

for link in links:
	browser.get(link)
	interview_string, paragraph = get_interview(link)
	if is_interview(interview_string) == 'True':
		interview_links.append(link)
	elif is_interview(interview_string) == 'False':
		pass
	sleep(randint(30,60))

#convert to pandas dataframe and write to sql database

df = pd.DataFrame(interview_links)

conn = mysql.connector.connect(user=username, password = password, host= host)
cursor = conn.cursor()
#edit database name to fit your needs
cursor.execute("CREATE DATABASE %s" % database)

write_to_db(username, password, host, database)





