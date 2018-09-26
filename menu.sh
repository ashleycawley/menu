#!/bin/bash

set -u

OPTION=$(whiptail --title "cloudabove Toolkit v0.1" --menu "Choose your option" 15 60 8 \
"1" "Migrate (Site & email data between cPanel accounts via FTP or RSYNC)" \
"2" "Report (Custom DNS Report)" \
"3" "Work in progress" \
"4" "Disk Space Tools" \
"5" "Exit"  3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "Your chosen option:" $OPTION
else
    echo "You chose Cancel."
fi

case $OPTION in
    1) migrate ;;
    2) report ;;
    3) echo "Invalid option. Quitting";;
    4) dstools ;;
    *) exit 0;;
esac
