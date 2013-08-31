rsync --verbose --progress --stats --compress --rsh=/usr/bin/ssh \
  --recursive --times --perms --links --delete \
  ~/minecraft/servers/forge/backups/ramsave/* \
  qial@derpatron:backups/minecraft/forge

