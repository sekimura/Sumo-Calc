perl senshuraku.pl  | sort -n | uniq -c | grep win | awk '{print $2, $1}'
