# TTS TEST
import pyttsx3
#pyttsx3.speak("I will speak this text")

engine = pyttsx3.init()
#engine.say("This is the default")
#engine.runAndWait()

engine.setProperty('rate', 100)
#engine.say("This is the 100 speed")
#engine.runAndWait()

voices = engine.getProperty('voices')
engine.setProperty('voice', voices[1].id)
engine.say("Voice 2")
engine.runAndWait()