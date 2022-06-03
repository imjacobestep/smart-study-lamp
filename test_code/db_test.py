import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore
import random

## CLOUD FIRESTORE SETUP ##
cred = credentials.Certificate("../smart-study-lamp-firebase-adminsdk-pgq1y-eeb5253a08.json")
default_app = firebase_admin.initialize_app(cred)
db = firestore.client()

def test(word):
    wordID = random.randint(1,2000000)
    print("uploading word...")
    word_doc = db.collection('words').document(str(wordID))
    word_doc.set({
        'word':word,
        'learned': False
    })
    print("finished")

test(input("Input a word to send to the database: "))