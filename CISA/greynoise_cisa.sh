#!/bin/bash

for i in $(cat known_exploited_vulnerabilities.csv)
do
  curl -L -X GET 'https://api.greynoise.io/v2/experimental/gnql/stats?query=cve:'$i'' -H 'key: YOU THOUGHT' | jq | tee  output.json
done
