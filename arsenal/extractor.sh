#!/bin/sh

dir=/root/Recon/$1

waybackurls $1 > $dir/$1_urls;gau $1 >> $dir/$1_urls;cat $dir/$1_urls | sort -u > $dir/$1_final_urls;
gf xss $dir/$1_final_urls | cut -d : -f3- | sort -u > $dir/$1_xss;
gf ssti $dir/$1_final_urls | sort -u > $dir/$1_ssti
gf ssrf $dir/$1_final_urls | sort -u > $dir/$1_ssrf
gf sqli $dir/$1_final_urls | sort -u > $dir/$1_sqli
gf redirect  $dir/$1_final_urls | cut -d : -f2- | sort -u > $dir/$1_redirect
gf rce  $dir/$1_final_urls | sort -u > $dir/$1_rce
gf potential $dir/$1_final_urls| cut -d : -f3- | sort -u > $dir/$1_potential
gf lfi  $dir/$1_final_urls | sort -u > $dir/$1_lfi

