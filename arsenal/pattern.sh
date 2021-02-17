#!/bin/sh
dir=~/Recon/$1

gf xss $dir/$1_archive_extracts | cut -d : -f3- | sort -u > $dir/$1_xss;
gf ssti $dir/$1_archive_extracts | sort -u > $dir/$1_ssti;
gf ssrf $dir/$1_archive_extracts | sort -u > $dir/$1_ssrf;
gf sqli $dir/$1_archive_extracts | sort -u > $dir/$1_sqli;
gf redirect  $dir/$1_archive_extracts | cut -d : -f3- | sort -u > $dir/$1_redirect;
gf rce  $dir/$1_archive_extracts | sort -u > $dir/$1_rce;
gf potential $dir/$1_archive_extracts| cut -d : -f3- | sort -u > $dir/$1_potential;
gf lfi  $dir/$1_archive_extracts | sort -u > $dir/$1_lfi;
