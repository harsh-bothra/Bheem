#!/bin/sh

dir=/root/Recon/$1
mkdir $dir

subfinder -d $1 > $dir/$1_subd;
assetfinder --subs-only $1 >> $dir/$1_subd;
chaos -d $1 -key 072644535d0624cfbc08fdf200a50794c95bd2b0f09906fc278d137e5964a376 -silent >> $dir/$1_subd;
cat $dir/$1_subd | sort -u > $dir/$1_subdomains;
cat $dir/$1_subdomains | httpx -follow-redirects -status-code -vhost -threads 300 -silent | sort -u | grep "[200]" | cut -d [ -f1 | uniq >> $dir/$1_resolved
