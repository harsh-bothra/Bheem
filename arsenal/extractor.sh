#!/bin/sh

dir=~/Recon/$1

~/go/bin/waybackurls $1 > $dir/$1_extraction;
~/go/bin/gau $1 >> $dir/$1_extraction; cat $dir/$1_extraction | sort -u > $dir/$1_archive_extracts;
