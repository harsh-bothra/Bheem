#!/bin/sh

dir=~/Recon/$1

mkdir -p $dir

echo https://$1 | python3 ~/Tools/smuggler/smuggler.py > $dir/$1_smuggler
