#!/bin/sh

dir=/root/Recon/$1

mkdir $dir

echo https://$1 | python3 /root/Tools/smuggler/smuggler.py > $dir/$1_smuggler
