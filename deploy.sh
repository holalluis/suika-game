#!/bin/bash
#git
git add *
git commit -am 'update'
git push

#desplega la web al servidor
# -h  human readable format
# -P  mostra progrés
# -vv incrementa verbositat
# -r  actua recursivament
rsync --rsync-path="sudo rsync" -h -P -vv -r . debian@51.91.250.220:/var/www/html/suika-game
