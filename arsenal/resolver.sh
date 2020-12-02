#!/bin/sh

dir=~/Recon/$1
mkdir -p $dir

subfinder -d $1 > $dir/$1_subd;
assetfinder --subs-only $1 >> $dir/$1_subd;
chaos -d $1 -key 5c97a054a7106503b2fd605af22ce53cf4784d59e4005b442355b3f130af98d8 -silent >> $dir/$1_subd;
cat $dir/$1_subd | sort -u > $dir/$1_subdomains;
cat $dir/$1_subdomains | httpx -follow-redirects -status-code -vhost -threads 300 -silent | sort -u | grep "\[200\]" | cut -d [ -f1 | uniq >> $dir/$1_resolved
