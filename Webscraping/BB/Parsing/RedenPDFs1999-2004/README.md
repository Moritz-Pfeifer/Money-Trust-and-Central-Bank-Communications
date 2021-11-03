# Working with corrupted PDF files


These PDF files are scanned files that are not downloadable online. In order to parse 
the information, the files are first transformed into xml files. 

This is done by the pdf_2_xml.py 

In a second step the xml files are parsed with parse_pdf_xml.py which scans the xml files 
for authors, date and text. 
