#!/bin/bash

mkdir markdown-files
for i in `tail -n +2 majestic_million.csv |head -n 1000|awk -F, {' print $3 '}`; do echo "doing $i" && node scrape-markdown/bin/cli.js http://www.$i > markdown-files/$i.md; done
