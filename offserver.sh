#!/bin/bash
#This script stops server and closes ssh client
echo "Do you want to stop the server"
echo yes or no
read "answer"
case $answer in
yes) echo "starting sq server.."
sudo init 0
;;

no)
echo "server remains on"
esac
