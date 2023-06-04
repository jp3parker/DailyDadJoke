#!/bin/bash

joke=$((curl -H "Accept: application/json" https://icanhazdadjoke.com/) | jq '.joke')

date=$(date "+%m-%d-%Y")

echo -e "$date\n$joke\n\n" | sed 's/\\//g' >> text.txt

git add text.txt
git commit -m "$date's joke"
git push origin main

