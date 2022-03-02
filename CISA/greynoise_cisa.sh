#!/bin/bash

for i in $(cat cves.txt)
do
  curl -L -X GET 'https://api.greynoise.io/v2/experimental/gnql/stats?query=cve:'$i'' -H 'key: YOU THOUGHT' | jq | tee -a output.json
done
