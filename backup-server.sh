#!/bin/sh
#
# Script to backup a given server
# Usage: ./backup-server.sh <server-name>
# (Assumes there is a screen session named mc-<server-name>)
#
if [ $# -eq 0 ]
then
echo "$0 : You must provide a server name!"
exit 1
fi

screen -S mc-$1 -p 0 -X eval 'stuff "say Backing up world...\012"'
screen -S mc-$1 -p 0 -X eval 'stuff "save-all\012"'
screen -S mc-$1 -p 0 -X eval 'stuff "save-off\012"'
rdiff-backup /home/mc/minecraft/$1 /home/mc/Dropbox/minecraft/rdiff/$1
screen -S mc-$1 -p 0 -X eval 'stuff "save-on\012"'
screen -S mc-$1 -p 0 -X eval 'stuff "say Backup complete!\012"'

