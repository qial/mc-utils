rsync --verbose --progress --stats --compress --rsh=/usr/bin/ssh \
  --recursive --times --perms --links --delete \
  ~/servers/* ~/minecraft/servers/forge/backups/ramsave

