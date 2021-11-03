"""
This script iterates PDFs to XML and generates
XML of entire PDF
"""
import os
from time import sleep
import pdfquery


def get_pdf():
    files = []

    try:
        for r, d, f in os.walk(PATH):
            for file in f:
                if '.pdf' in file:
                    files.append(os.path.join(r, file))
    except Exception as ex:
        print('Exception in get_pdf')
        print(str(ex))
    finally:
        return files


def gen_xml(file_path):
    f_name = ''
    xml_name = ''

    print('Processing file...{}'.format(file_path))

    file_parts = file_path.split('/')
    for part in file_parts:
        if '.pdf' in part:
            f_name = part
            # xml_name = f_name.replace('.pdf', '.xml')
            xml_name = f_name.replace('.pdf', '_full.xml')
            print(xml_name)

    xml_path = PATH + 'xml/' + xml_name
    print('XML FILE = {}'.format(xml_path))
    pdf = pdfquery.PDFQuery(file_path)
    #total_pages = pdf.doc.catalog['Pages'].resolve()['Count']
    pdf.load()
    pdf.tree.write(xml_path, pretty_print=True, encoding="utf-8")

    print('File {} created successfully.'.format(xml_path))


if __name__ == '__main__':
    PATH = '/Users/MoritzPfeifer/Desktop/PDF_DATA_NEW/RedenPDFs1999-2004/'
    pdf_files = get_pdf()

    print('TIME TO GENERATE XML from PDF')

    for pdf_file in pdf_files:
        gen_xml(pdf_file)
        sleep(2)
