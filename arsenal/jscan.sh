#!/bin/sh
dir=~/Recon/$1

echo $1 | gau | grep -iE "\.js$" | uniq | sort >> $dir/$1_jsfile_links;
echo $1 | subjs >> $dir/$1_jsfile_links;
echo $1 | hakrawler -js -depth 2 -scope subs -plain >> $dir/$1_jsfile_links;

cat $dir/$1_jsfile_links | httpx -follow-redirects -silent -status-code | grep "[200]" | cut -d ' ' -f1 | sort -u > $dir/$1_live_jsfile_links;

python3 ~/Tools/LinkFinder/linkfinder.py -d -i $1 -o cli >> $dir/$1_JSEndpoints;

cat $dir/$1_live_jsfile_links | python3 ~/Tools/getjswords.py | sort -u > $dir/$1_JSWords;

cat $dir/$1_live_jsfile_links  | while read url ; do bash ~/Tools/jsvar.sh $url | sort -u | tee $dir/$1_JSXSS ; done;
