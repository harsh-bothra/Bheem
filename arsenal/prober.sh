#!/bin/sh

dir=~/Recon/$1

cat $dir/$1_subdomains | httpx -follow-redirects -status-code -vhost -threads 300 -silent | sort -u | grep "[200]" | cut -d [ -f1 | sort -u | sed 's/[[:blank:]]*$//' >> $dir/$1_probed

