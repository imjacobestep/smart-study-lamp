import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore
import random
import requests
from bs4 import BeautifulSoup
from PyDictionary import PyDictionary as dictionary
import re

## CLOUD FIRESTORE SETUP ##
cred = credentials.Certificate("../smart-study-lamp-firebase-adminsdk-pgq1y-eeb5253a08.json")
#cred = credentials.Certificate("smart-study-lamp-firebase-adminsdk-pgq1y-eeb5253a08.json")
default_app = firebase_admin.initialize_app(cred)
db = firestore.client()

def _get_soup_object(url, parser="html.parser"):
    return BeautifulSoup(requests.get(url).text, parser)

def usage(term, min_length= 5, disable_errors=False):
        """
        :param term: The word we are looking for meanings and usages
        :param min_length: minimum length of the sentence to filter on
        :param disable_errors: if False, print errors if there is some error
        :return: returns a dictionary with keys begin (noun, verb). One with meanings and other with usages
        """
        if len(term.split()) > 1:
            print("Error: A Term must be only a single word")
        else:
            try:
                html = _get_soup_object("http://wordnetweb.princeton.edu/perl/webwn?s={0}".format(term))
                types = html.findAll("h3")
                length = len(types)
                lists = html.findAll("ul")
                usage_out = []
                for a in types:
                    reg = str(lists[types.index(a)])
                    for x in re.findall(r"<i>\"(.*?)\"", reg):
                        if 'often followed by' in x:
                            pass
                        elif len(x) >= min_length and term in str(x):
                            usage_out.append(x)
                return usage_out
            except Exception as e:
                if disable_errors == False:
                    print("Error: The Following Error occured: %s" % e)

def test(word):
    wordID = random.randint(1,200000)
    print("uploading word...")
    definition = dictionary.meaning(word)["Noun"][0]
    use = usage(word)
    word_doc = db.collection('words').document(str(wordID))
    word_doc.set({
        'word':word,
        'learned': False,
        'definition': definition,
        'use': "This is the word used in a sentence"
    })
    print("finished")

test(input("Input a word to send to the database: "))