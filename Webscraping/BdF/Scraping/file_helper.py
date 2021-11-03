# TODO: This file is all over the place, refactor it and probably call it something other than `file_helper`


import datetime
import os
import urllib.request
from datetime import date
from pathlib import Path
from urllib.error import *
import datefinder
import http
import json
import requests
from colorama import Fore
from urllib.parse import urlparse
from os.path import splitext

DOWNLOAD_PATH = os.path.join(Path(os.getcwd()).parents[1], 'LocalStorage')


# DOWNLOAD_PATH = os.path.join(os.getcwd(), 'LocalStorage')

def extract_section(title):
    title = title.lower()
    if "discours" in title:
        return "discours"
    elif "interview" in title:
        return "interview"
    return "autres_interventions"


def get_filename_ext(url):
    """Return the filename & extension from url, or ''."""
    parsed = urlparse(url)
    root, ext = splitext(parsed.path)
    filename = os.path.basename(parsed.path).split('.')[0]
    return filename, ext[1:].lower()


def fix_download_url(_url):
    if "if_" not in _url:
        # make downloadable url
        split_url = _url.split('/https://')
        _url = split_url[0] + "if_" + "/https://" + split_url[1]

    return _url


def try_get_fallback_urls(_url):
    # Returns:
    # is_success: Boolean
    # fallback_urls: list of URLs
    try:
        url_list = []
        extracted_url = _url.split('banque-france.fr')[1]
        extracted_url = 'http://banque-france.fr' + extracted_url
        fallback_url = "http://web.archive.org/cdx/search/cdx?url=" + extracted_url + "&collapse=digest" \
                                                                                      "&from=20000101" \
                                                                                      f"&to={''.join(str(date.today()).split('-'))}" \
                                                                                      "&output=json"
        urls = requests.get(fallback_url).text
        parse_url = json.loads(urls)
        for i in range(1, len(parse_url)):
            orig_url = parse_url[i][2]
            tstamp = parse_url[i][1]
            waylink = tstamp + '/' + orig_url
            url_list.append(fix_download_url('https://web.archive.org/web/' + waylink))
        print(Fore.GREEN + f'Successfully fetched {len(url_list)} fallback URLs')
        return True, url_list
    except HTTPError as http_exp:
        print(Fore.RED + f'Error occurred while fetching fallback URLs.')
        print(Fore.RED + f'{http_exp.code} | {http_exp.reason}')
        return False, []
    except http.client.HTTPException as no_resp_exp:
        print(Fore.RED + f'Error: Received no response from fallback API call.')
        print(Fore.RED + f'{str(no_resp_exp)}')
        return False, []
    except Exception as base_exp:
        print(Fore.RED + f'Error: Unknown exception occurred while trying to get fallback URLs.')
        print(Fore.RED + f'{str(base_exp)}')
        return False, []


def try_download_file(_url, _filename):
    # Returns:
    # is_success: Boolean
    # path: String or None
    try:
        urllib.request.urlretrieve(_url, _filename)
        print(Fore.GREEN + f"Successfully downloaded file: {_filename}")
        return True, _filename
    except HTTPError as http_exp:
        print(Fore.RED + f'Error occurred while downloading file.')
        print(Fore.RED + f'{http_exp.code} | {http_exp.reason}')
        return False, None
    except http.client.HTTPException as no_resp_exp:
        print(Fore.RED + f'Error: Received no response from download URL.')
        print(Fore.RED + f'{str(no_resp_exp)}')
        return False, None
    except Exception as base_exp:
        print(Fore.RED + f'Error: Unknown exception occurred while downloading file.')
        print(Fore.RED + f'{str(base_exp)}')
        return False, None


def stringify_posix_path(_path):
    # Returns string with relative path starting from LocalStorage
    # For e.g:
    # /path/to/some/folder/BankofFrance/LocalStorage/Communiqués de presse/some_file.pdf
    # --->
    # /Communiqués de presse/some_file.pdf
    try:
        relative_path = str(_path)
        relative_path = relative_path.split('LocalStorage')[1]
        return relative_path
    except:
        return str(_path)


def try_parse_date(string, this_pr_year=None, fuzzy=False):
    string = string.strip()
    string = string.lower()

    months_fr = ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre',
                 'Novembre', 'Décembre']
    months_en = ['JANUARY', 'FEBRUARY', 'MARCH', 'APRIL', 'MAY', 'JUNE', 'JULY', 'AUGUST', 'SEPTEMBER', 'OCTOBER',
                 'NOVEMBER', 'DECEMBER']

    # translate to English because datefinder can't work with French
    for m in months_fr:
        if m.lower() in string.lower():
            string = string.replace(m.lower(), months_en[months_fr.index(m)])

    try:
        matches = list(datefinder.find_dates(string))

        # no match found, return without success
        if len(matches) < 1:
            return None

        # at least one match was found, process it further
        # take the first match and hope for the best ;)
        # TODO: Figure out a way if there are more than 1 matches
        match = matches[0]
        match_str = str(match)

        if this_pr_year is None or this_pr_year == "":
            return match_str

        current_year = str(datetime.datetime.now().year)
        if str(match.year) == current_year and (not this_pr_year == current_year):
            match_str = match_str.replace(str(match.year), str(this_pr_year))

        return match_str
    except Exception as e:
        print('Exp')
        print(e)
        return None


def download_file(_url, _folder, _filename, _ext, _redownload, _fix_url=True, _has_fallbacks=True):
    # Returns:
    # is_downloaded: Boolean | Will return true if file was already present _redownload is set to false
    # download_path: String | Will return None if not able to download
    # download_url: String | Will return the provided _url if file was already present and _redownload is set to false
    # not_downloaded_reason : String | Will return None if downloaded successfully or if file already present

    file_to_download = Path(os.path.join(DOWNLOAD_PATH, _folder, _filename + '.' + _ext))

    # check if file is already present
    if (not _redownload) and Path(os.path.join(DOWNLOAD_PATH, _folder, _filename + '.' + _ext)).is_file():
        print(Fore.GREEN + f'File {os.path.join(DOWNLOAD_PATH, _folder, _filename + "." + _ext)} already exists.')
        return True, stringify_posix_path(file_to_download), _url, None

    # if file was not present, or re-download is enabled
    # try to download the file
    print(f"Downloading: {os.path.join(_folder, _filename + '.' + _ext)}")

    if _fix_url:
        # URL scraped from WBM is not downloadable
        # Fix is to make it downloadable
        _url = fix_download_url(_url)

    # First, try to download from the provided URL
    download_status, downloaded_file = try_download_file(_url, file_to_download)

    # if file was downloaded in the first try, return with success
    if download_status:
        return download_status, stringify_posix_path(downloaded_file), _url, None

    # if file's _has_fallbacks is false, and we were unable to download, return with error
    if not _has_fallbacks:
        return False, None, _url, 'Failed to download file.'


    # if first time download fails
    # try to fetch fallback urls
    fallback_status, fallback_urls = try_get_fallback_urls(_url)

    # if the API request to get fallback URLs fail, return without success
    if not fallback_status:
        print(Fore.RED + f'Failed to download file because failed to fetch fallback URLs.')
        return False, None, _url, 'Failed to download file because failed to fetch fallback URLs.'

    # if no fallback URLs were found, return without success
    if len(fallback_urls) < 1:
        print(Fore.RED + f'No fallback URLs found. Unable to download the file')
        return False, None, _url, 'No fallback URLs found.'

    print(f'Trying fallback URLs as alternatives..')
    for fallback_index, fallback_url in enumerate(fallback_urls):
        print(f'Trying fallback URL {fallback_index+1}/{len(fallback_urls)}.')
        download_status, downloaded_file = try_download_file(fallback_url, file_to_download)

        # check if we were able to download file from this fallback url
        if download_status:
            print(Fore.GREEN + f'File downloaded successfully from this fallback URL.')
            # return with success
            return download_status, stringify_posix_path(downloaded_file), fallback_url, None

        # if file was not downloaded from this fallback URL, move to next one
        print(Fore.RED + f'Unable to download file from this URL. Trying the next one.')

    # if we get here, it means we ran out of all fallback URLs without downloading the file
    # return without success
    return False, None, _url, 'Unable to download file even from fallback URLs.'



# print(try_get_fallback_urls("https://web.archive.org/web/20151019050023/https://www.banque-france.fr/uploads/tx_bdfgrandesdates/ET2013_Comunique-presse_20141204.pdf"))