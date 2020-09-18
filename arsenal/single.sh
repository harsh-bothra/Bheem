#!/bin/bash

dir=~/Recon/$1

mkdir -p $dir
echo "$1" >> $dir/$1_subdomains
cat $dir/$1_subdomains | httpx -silent > $dir/$1_resolved
