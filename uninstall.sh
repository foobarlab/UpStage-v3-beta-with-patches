#!/bin/bash

###################################################################
# A very simple script used to unistall upstage
# Usage: 
# execute as root using sh uninstall.sh 
#
#@author: Heath Behrens (AUT)
#Changelog: Created on 13-April-2011
###################################################################

echo "######################################################################"
echo "Killing all UpStage processes"
#find the process id's associated with upstage-server
out=`ps ux | awk '/upstage-server/ && !/awk/ {print $2}'`
#loop through the processes and kill each one.
echo "Processes found."
for pid in $out
do
    echo "Stopping $pid"
	kill $pid
	echo "$pid stopped."
done
echo ""
echo "Complete!"
echo "######################################################################"

echo "Cleaning up."
echo "######################################################################"
echo ""
echo "Removing /usr/local/etc/upstage/"
rm -r /usr/local/etc/upstage/
echo "Removing /var/local/run/upstage/"
rm -r /var/local/run/upstage/
echo "Removing /var/local/log/upstage/"
rm -r /var/local/log/upstage/
echo "Removing /usr/local/upstage/"
rm -r /usr/local/upstage/
echo "Removing /usr/local/bin/upstage"
rm -r /usr/local/bin/upstage
echo "Removing /usr/local/share/upstage/"
rm -r /usr/local/share/upstage/
echo "Removing /etc/cron.weekly/upstage-backup"
rm /etc/cron.weekly/upstage-backup
echo "Removing symbolic links in /usr/local/bin"
rm /usr/local/bin/chownme.sh
rm /usr/local/bin/img2swf.py
rm /usr/local/bin/speaker.py
rm /usr/local/bin/upstage-admin
rm /usr/local/bin/upstage-admin.conf
rm /usr/local/bin/upstage-backup
rm /usr/local/bin/upstage-server


echo ""
echo "Thank you for using UpStage!"
echo "######################################################################"
