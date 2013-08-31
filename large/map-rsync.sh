rsync --verbose --progress --stats --compress --rsh=/usr/bin/ssh \
  --recursive --times --perms --links --delete \
  ~/minecraft/dynmapweb/* qial@qial.net:dynmap

