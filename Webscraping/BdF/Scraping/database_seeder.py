import database as _db

# Create database if not exists
db = _db.Database("bank_of_france.db")

# Create table

'''
CREATE TABLE records (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
   	section TEXT,
   	url TEXT,
   	title TEXT,
   	content TEXT,
   	contentType INTEGER,
   	author TEXT,
	postedOn TEXT
)
'''
try:
    db.query('CREATE TABLE records ('
             'id INTEGER PRIMARY KEY AUTOINCREMENT,'
             'section TEXT,'
             'url TEXT,'
             'content TEXT,'
             'author TEXT,'
             'postedOn INTEGER'
             ')')
except Exception as e:
    print(e)
