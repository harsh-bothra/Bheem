#!/bin/sh

dir=~/Recon/$1

echo $1 | ~/go/bin/shuffledns -w ~/go/bin/subdomains.txt -r ~/arsenal/resolvers.txt -v -silent -o $1_brute;
mv $1_brute $dir/$1_brute;
cat $dir/$1_brute >> $dir/$1_unfilter_subdomains;
cat $dir/$1_unfilter_subdomains | sort -u > $dir/$1_subdomains;

