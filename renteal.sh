#!/bin/bash
 
# if no command line arg given
# set rental to Unknown
if [ -z $1 ]
then
  rental="*** Unknown server ***"
elif [ -n $1 ]
then
# otherwise make first arg as a rental
  rental=$1
fi
 
# use case statement to make decision for rental
case $rental in
   "1") sshpass -p "neV@proadm" ssh -o StrictHostKeyChecking=no root@192.168.1.5
;;
   "2") echo "For $rental rental is Rs.10 per k/m.";;
   "3") echo "For $rental rental is Rs.5 per k/m.";;
   "4") echo "For $rental rental 20 paisa per k/m.";;
   "5") echo "For $rental rental Rs.3  per k/m.";;
   "6") echo "For $rental rental Rs.5 per k/m.";;
   *) echo "Sorry, I can not get a $rental server access  for you!";;
esac
