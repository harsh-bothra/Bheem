#!/bin/sh

dir=~/Recon/$1

waybackurls $1 > $dir/$1_extraction;
gau $1 >> $dir/$1_extraction; cat $dir/$1_extraction | sort -u > $dir/$1_archive_extracts;
