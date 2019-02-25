#!/bin/bash
set -e

regex='\[(\d+\/\w+\/\d\d\d\d:\d\d:\d\d:\d\d\.\d+)\]'
format='%d/%B/%Y:%T.%3N'
perl logslice-naive.pl \
  --regex="$regex" \
  --chunk=50000 \
  --begin="2019-02-20T06:00:00" \
  --end="2019-02-23T07:00:00" \
  --format="$format" < haproxy.log
