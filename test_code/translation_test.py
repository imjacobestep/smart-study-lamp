# TRANSLATION TEST
from PyDictionary import PyDictionary
dictionary = PyDictionary

def translate(word, language):
  return dictionary.translate(self=dictionary, term=word, language=language)

wordIn = input("type word to translate: ")
langIn = input("Type language to translate into: ")
print(translate(wordIn, langIn))