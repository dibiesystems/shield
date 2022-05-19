#!/bin/bash
#This script stops server and closes ssh client
echo "Switch case demo starts.."
case $1 in
start) echo "starting sq server.."
echo "started..."
;;

stop)
echo "stopping the server"
echo "server stopped";;
esac
