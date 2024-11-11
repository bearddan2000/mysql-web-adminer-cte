#!/usr/bin/env bash

TIMER=5

for f in `ls db/sql | sort -n`; do
  cat db/sql/$f
  echo
  echo $f
  echo
  sleep $TIMER
done