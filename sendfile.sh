#!/bin/bash
#this script is used to send files from one server to another
echo name of file
read filename
echo to who are you sending the file
read user
echo whichip
read whichip
echo destination
read destination
sudo scp $filename $user@$whichip:$destination

