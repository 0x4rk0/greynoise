#!/bin/bash

# * * * * * bash /path/to/updater.sh
# This script will update every minute, please use https://crontab.guru/ to make any changes to your crontask.
#To edit crontab, use one of the following commands down below and copy the first line, remember to remove the # as this flags that line as a comment.
#export VISUAL=nano; crontab -e
#export VISUAL=vim; crontab -e

#Do not forget to chmod +x updater.sh

#Downloads CSV file from CISA and appends to known_exploited_vulnerabilities.csv
curl https://www.cisa.gov/sites/default/files/csv/known_exploited_vulnerabilities.csv | cut -f1 -d ',' > known_exploited_vulnerabilities.csv
