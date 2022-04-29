# DEFINITION TEST
from PyDictionary import PyDictionary
dictionary = PyDictionary

def define(word):
  return dictionary.meaning(word)

userIn = input("type word to define: ")
print(define(userIn))