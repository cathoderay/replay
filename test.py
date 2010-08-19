from pymongo import *

#THIS IS A SPIKE SOLUTION!

collections_to_replay = ["events.foobar"]

connection = Connection()
holmes = connection.holmes

#getting the collection foobar
col = holmes.events.foobar
#getting all
all = col.find()

#filtering
sorted = col.find().sort("timestamp")
