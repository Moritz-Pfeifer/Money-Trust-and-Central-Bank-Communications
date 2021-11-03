# Scraping the Bundesbank Hompage and Parsing the Data into JSON files 


<strong>Requirements</strong>

● Python 3+<br/>
● Python Librairies:<br/>
requests<br/>
beautifulsoup<br/>
PyPDF2<br/><br/>

<strong>Files</strong>

● Extract.py

These files are used to extract link, date, title, author (where applicable), text, and file type 
from the Bundesbank website and its twitter account and stores them in an Sqlite database. 
Links are extracted as html or pdf. 

For extracting, open Terminal and go the the directory where the files are located. E.g. cd ~/Desktop/yourfile 

From Terminal, execute the file typig:

python extract.py <the directory you wish to extract> 

e.g. python extract.py reden

All extracting scripts can be found in the Extracting folder.<br/><br/> 

● SQlite DB

All data is being saved in an SQLite database. When a link is processed, it’s initial status is 0. 
During the parsing process it is changed to 1. After successful parsing, it is set to 3. 
If the script is broken in the middle or terminated, some records may have the status 1. 
In that case the status of the query links can be reset to status = 0. 

A databases for each filtype and a complete database can be found in the Extracting folder.<br/><br/>

● Parse.py

This file is responsible for fetching the records from the database and parse the data into alanlyzable json files. 
It will download PDF attachemetns where available in the same folder. If the a file is only available as pdf, 
it will parse the PDF using pyPDF and dump it into its corresonding json file. 

For parsing, open Terminal and type: 

while true; do python parse_filetype.py; sleep 20; done

This command will run parse.py every two minutes fetching 10 files per 120 seconds. 
Use Ctrl+C to stop the process once there are no more files to fetch. 

All parsing scripts can be found in the Parsing folder. 

