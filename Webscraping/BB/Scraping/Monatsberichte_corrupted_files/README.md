# Working with corrupted PDF files


These PDF files are using a font that is not recognized by any pdf extraction library (fitz, PyPDF, etc.). 
With PDFminer, the files can be parsed almost entirely, but it is not able to recognize the German
letters ÄäÖöÜü and seems to read the slashed zero as the glyph Ø. 

These letters are rendered as cid:XXX in the following way: 

Ä = cid: 190
ä = cid: 228
Ö = cid: 214
ö = cid: 245
Ü = cid: 220
ü = cid: 252
Ø = cid: 25

('Ö', 214, 214, 214, 214),
('Ø', 25, 25, 25, 25),

The characters can be added to latin_enc.py in the PDFMiner files, so that e.g. 

('Ö', 214, 214, 214, 214),
('Ø', 25, 25, 25, 25),

and to glyphlist.py, so that e.g. 

'Ö': u'\u00D6',
'Ø': u'\u00D8', 

In that way PDFminer uses the cid to identify which character it should render.

