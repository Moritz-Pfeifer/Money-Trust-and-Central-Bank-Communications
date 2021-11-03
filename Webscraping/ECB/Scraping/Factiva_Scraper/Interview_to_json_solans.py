import pandas as pd
from pandas import DataFrame
import os
import re
from dateutil.parser import parse
from bs4 import BeautifulSoup
import selenium
import json
from random import randint
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
#options.add_experimental_option( "prefs", {'--lang': 'en'})

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
	print ("Authentication Complete")

#search function
def search(name):
	try:
		search = browser.find_element_by_id('ftx').send_keys(name)
	except selenium.common.exceptions.ElementNotInteractableException:
		browser.find_element_by_class_name('ui-switchbutton-enabled').click()
		search = browser.find_element_by_id('ftx').send_keys(name)
	print ("search term placed")
	
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
	print ("filters have been applied")
	
def get_links():
	base_url = "https://global-factiva-com.acces-distant.sciencespo.fr/"
	soup = BeautifulSoup(browser.page_source, 'html.parser')
	div = soup.find('div', class_ = 'headlines')
	a_tag = div.find_all('a', href=True)
	url_list = [base_url+a_tag[u]['href'] for u in range(0, len(a_tag), 2)]
	sources = [a_tag[s] for s in range(1, len(a_tag),2)]
	return (url_list, sources)
	
	
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

def get_headline():
	soup = BeautifulSoup(browser.page_source, 'html.parser')
	div = soup.find('div', attrs = {'id' : 'hd'})
	return div.text.strip()

def get_date():
	soup = BeautifulSoup(browser.page_source, 'html.parser')
	div = soup.find('div', attrs = {'id' : 'hd'})
	date = div.findNextSibling().findNextSibling().text
	if len(date.split()) != 3:
		date = div.findNextSibling().findNextSibling().findNextSibling().text
	if len(date.split()) !=3:
		date = div.findNextSibling().findNextSibling().findNextSibling().findNextSibling().text
	return date

def convert_date(date_string):
	dt = parse(date_string)
	converted_date = dt.strftime('%Y-%m-%d')
	return converted_date

def is_interview(interview_string):
	question_marks = re.findall("\?", interview_string)
	if len(question_marks) >= 2:
		return 'True'
	else:
		return 'False'

def paragraphs_to_sentences(paragraph):
	sentences = []
	for p in range(0,len(paragraph)):
		sen = paragraph[p].find_all('font')
		sen.remove(sen[0])
		for s in range(len(sen)):
			sentences.append(sen[s].text)
	return sentences

def _paragraphs_to_sentences(paragraph):
	sentences = []
	for p in range(0,len(paragraph)):
		sen = paragraph[p].find_all('font')
		if len(sen) > 0:
			sen.remove(sen[0])
		for s in range(len(sen)):
			sentences.append(sen[s])
	return sentences


def _to_json(interview_link, source, name, id):
	RECORD_ID = id
	AUTHOR = name
	AUTHOR = AUTHOR.encode('utf8')
	TITLE = get_headline()+' '+'for'+' '+source.text
	TITLE = TITLE.encode('utf8')
	date = get_date()
	DATE = convert_date(date)
	interview_string, paragraph = get_interview(interview_link)
	sentences = _paragraphs_to_sentences(paragraph)
	questions = []
	answers = []
	for i in range(len(sentences)):
		if sentences[i].text.strip().endswith('?'):
			questions.append([sentences[i].text])
			if not sentences[i].findNext().text.strip().endswith('?'):
				answers.append(sentences[i].findNext().text.strip())
			if sentences[i].findNext().text.strip().endswith('?'):
				questions[i].append(sentences[i].findNext().text.strip().endswith('?'))
				if len(questions[i]) != 1:
					try:
						questions[i] = ["".join(questions[i], questions[i+1])]
					except IndexError:
						continue
	_questions = []
	for j in range(len(questions)):
		_questions.append(questions[j][0])
	text = ['\n\nBEGIN_QUESTION'+k+''+'END_QUESTION\n\n'+l for k,l in zip(_questions, answers)]
	TEXT = "".join(text)
	dict = {'RECORD_ID':RECORD_ID, 'AUTHOR':AUTHOR, 'TITLE':TITLE, 'DATE':DATE, 'TEXT':TEXT}
	with open('interviews'+'_'+DATE+'_'+str(RECORD_ID)+'.json','w') as file:
		json.dump(dict, file)

def to_json(interview_link, source, name, id):
	RECORD_ID = id
	AUTHOR = name
	TITLE = get_headline()+' '+'for'+' '+source.text
	date = get_date()
	DATE = convert_date(date)
	interview_string, paragraph = get_interview(interview_link)
	sentences = _paragraphs_to_sentences(paragraph)
	questions = []
	answers = []
	for parag in paragraph:
		if parag.text.strip().endswith("?"):
			questions.append(parag.text.strip())
			answers.append(parag.findNextSibling().text.strip())
	text = ['\n\nBEGIN_QUESTION'+k+''+'END_QUESTION\n\n'+l for k,l in zip(questions, answers)]
	TEXT = "".join(text)
	dict = {'RECORD_ID':RECORD_ID, 'AUTHOR':AUTHOR, 'TITLE':TITLE, 'DATE':DATE, 'TEXT':TEXT}
	with open('interviews'+'_'+DATE+'_'+str(RECORD_ID)+'.json','w') as file:
		json.dump(dict, file)

name = input("Enter Name:\n")
authenticate()
sleep(120)
search(name)
sleep(5)
filters()
sleep(60)
links, sources = get_links()


#getting the links that are actual interviews and writing it out to a json file

interview_links = []

for i in range(len(links)):
	browser.get(links[i])
	interview_string, paragraph = get_interview(links[i])
	if is_interview(interview_string) == 'True':
		interview_links.append(links[i])
		to_json(links[i], sources[i], name, i)
	elif is_interview(interview_string) == 'False':
		pass
	sleep(randint(30,60))


