rsync --verbose --progress --stats --compress --rsh=/usr/bin/ssh \
  --recursive --times --perms --links --delete \
  ~/minecraft/servers/large/backups/ramsave/* \
  qial@derpatron:backups/minecraft/large

