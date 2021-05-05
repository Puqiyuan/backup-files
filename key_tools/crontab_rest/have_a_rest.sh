#!/bin/bash

#Export DISPLAY
export DISPLAY=:0.0

#Call qiv
/usr/bin/qiv -m --vikeys $HOME/backup-files/key_tools/crontab_rest/rest.jpeg &

#Time to display
/usr/bin/sleep 180
/usr/bin/killall qiv
