#!/bin/sh -x
grep common12-18-333 html/*.html |lv -Iej | grep font | sed -e 's/.*common12-18-333">//g' | sed -e 's/<\/font>.*//g' | sort -n | sed -e 's/勝.*//g' | sort -n | uniq -c
