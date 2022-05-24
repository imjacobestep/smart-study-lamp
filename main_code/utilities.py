## IMPORTS ##
from io import BytesIO
from skimage import io
from matplotlib import pyplot as plt
import time
import pyttsx3
import pymysql
import random
import environment_service

## VARIABLES ##
pin_table = {
  "led brightness": 27,
  "led color": 6,
  "auto switch": 5,
  "cool led data": 12,
  "warm led data": 13,
  "color led data": 10,
  "camera switch": 19,
}

colors_table = {
    "warm": [253, 150, 50],
    "cool": [100, 100, 255],
    "neutral": [254, 254, 254],
    "special": [0, 255, 40],
}

crop_dimensions = {
    "width": 300,
    "height": 115
}

target_brightness = 60
movement_margin = 10
finger_margin = 35

## DATABASE SETUP ##
server = 'lamp-server.database.windows.net'
database = 'lampdb'
username = 'smart-study-lamp'
password = '515Team13'
#driver = 'FreeTDS'
driver = '/usr/lib/arm-linux-gnueabihf/odbc/libtdsodbc.so'
userID = "Test2"
#connection = pymssql.connect('DRIVER='+driver+';PORT=1433;SERVER='+server+';PORT=1443;DATABASE='+database+';UID='+username+';PWD='+ password)
#connection = pymssql.connect(server, username, password, database)
pyodbc.connect('DRIVER='+driver+';SERVER='+server+';PORT=1433;DATABASE='+database+';UID='+username+';PWD='+ password + ';TDS_Version=8.0')
cursor = connection.cursor(as_dict=True)

## FUNCTIONS ##
def load_image(filepath):
    img = io.imread(filepath)
    return img

def show_image(image):
    plt.imshow(image)
    plt.show()

def speak(text):
    pyttsx3.speak(text)

def get_definition(word):
    definition = ""
    #definition = dictionary.meaning(word)
    print("word detected: " + word)
    output_text = ("This word is pronounced: " + str(word) + ". Here is its definition: " + str(definition))
    return output_text

def wait(seconds):
    start = time.time()
    while time.time()-start < seconds:
        pass

def send_word(word):
    wordID = random.randint(1,200000)
    print("uploading word...")
    query = (
        "INSERT INTO word (word_id, word, learned)"
        "VALUES(?,?,?)"
    )
    queryVals = (wordID, word, 0)
    cursor.execute(query, queryVals)
    connection.commit()
    print("finished")

def send_lux()
    readingID = random.randint(1,200000)
    lux = environment_service.get_lux()
    if abs(lux - target_brightness) < 2:
        at_target = 1
    else:
        at_target = 0
    print("uploading lux...")
    query = (
        "INSERT INTO environment (reading_id, lux, meets_target)"
        "VALUES(?,?,?)"
    )
    queryVals = (readingID, lux, at_target)
    cursor.execute(query, queryVals)
    connection.commit()
    print("finished")