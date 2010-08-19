#!/bin/bash

#SENDING SOME EVENTS TO MONGODB

MONGODB_PATH="/opt/mongodb-linux-i686-1.6.1/bin"

cd $MONGODB_PATH
count=0
while [ $count -le 10 ]
do
	./mongo holmes --eval "db.foobar.insert({timestamp: $count, foo : 'bar$count'})"
	count=`expr $count + 1`
done
