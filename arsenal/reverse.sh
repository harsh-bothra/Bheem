#!/bin/sh
dir=/root/Recon/$1
amass intel -whois -d $1 >$dir/$1_reverse;
cat $dir/$1_reverse | httpx -follow-redirects -status-code -vhost -threads 100 | sort -u | grep "[200]" | cut -d [ -f1 | uniq > $dir/$1_reverse_resolved
