#!bin/sh
iconv -f euc-jp html/*.html  | egrep '千秋楽|font class="common12-18-333' > temp.txt
