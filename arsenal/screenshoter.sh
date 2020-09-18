#!/bin/sh

dir=/root/Recon/$1
mkdir $dir/screenshots;

cat $dir/$1_resolved | sed 's/ /%20/g' | cut -d% -f1 > $dir/$1_ssurl;

/root/Tools/gowitness/gowitness file -s $dir/$1_ssurl -t 50 -d $dir/screenshots/;
