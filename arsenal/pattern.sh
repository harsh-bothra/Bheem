#!/bin/sh
dir=~/Recon/$1

~/go/bin/gf xss $dir/$1_archive_extracts | cut -d : -f3- | sort -u > $dir/$1_xss;
~/go/bin/gf ssti $dir/$1_archive_extracts | sort -u > $dir/$1_ssti;
~/go/bin/gf ssrf $dir/$1_archive_extracts | sort -u > $dir/$1_ssrf;
~/go/bin/gf sqli $dir/$1_archive_extracts | sort -u > $dir/$1_sqli;
~/go/bin/gf redirect  $dir/$1_archive_extracts | cut -d : -f3- | sort -u > $dir/$1_redirect;
~/go/bin/gf rce  $dir/$1_archive_extracts | sort -u > $dir/$1_rce;
~/go/bin/gf potential $dir/$1_archive_extracts| cut -d : -f3- | sort -u > $dir/$1_potential;
~/go/bin/gf lfi  $dir/$1_archive_extracts | sort -u > $dir/$1_lfi;
