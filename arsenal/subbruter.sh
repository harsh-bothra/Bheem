#!/bin/sh

dir=~/Recon/$1

echo $1 | shuffledns -w ~/arsenal/subdomains.txt -r ~/arsenal/resolvers.txt -v -o $1_brute;
mv $1_brute $dir/$1_brute;
cat $dir/$1_brute >> $dir/$1_unfilter_subdomains;
cat $dir/$1_unfilter_subdomains | sort -u > $dir/$1_subdomains;

