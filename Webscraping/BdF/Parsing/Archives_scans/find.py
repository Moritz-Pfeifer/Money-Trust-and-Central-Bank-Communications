import shlex
from subprocess import Popen, PIPE
import os
import glob
import shutil


def get_exitcode_stdout_stderr(cmd, format_output=True):
    """
    Execute the external command and get its exitcode, stdout and stderr.
    A non-zero exitcode means an error occurred.
    """
    args = shlex.split(cmd)

    proc = Popen(args, stdout=PIPE, stderr=PIPE)
    out, err = proc.communicate()
    exitcode = proc.returncode
    #

    # .decode() to get rid of the b' prefix
    out = out.decode('utf-8')
    err = err.decode('utf-8')

    if format_output:
        out = out.replace('\n', ' ').replace('\r', '')
        err = err.replace('\n', ' ').replace('\r', '')

    return exitcode, out, err



count = 0
for root, dirs, files in os.walk(os.path.join(os.getcwd(), 'Banque_de_France_scans')):
    for file in files:
        if file.endswith(".pdf"):
            this_file_path = os.path.join(root, file)
            print(f'Checking file: {this_file_path}')
            exit_code, out, err = get_exitcode_stdout_stderr(f"pdffonts '{this_file_path}'", format_output=False)
            if exit_code != 0:
                print("You do not have pdffonts installed!")
                exit(-1)
            _splited = out.split("\n")
            if len(_splited) <= 2:
                print("No fonts found for this file. This is probably scanned!")
                count = count + 1
            # print(len(_splited))
            # print(_splited[0])
            # print(_splited[2])
            # print("**************************************************************")
print(f'Found {count} scanned files.')
