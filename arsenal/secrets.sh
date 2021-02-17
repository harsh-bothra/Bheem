#!/bin/sh

dir=~/Recon/$1

cat $dir/$1_probed | xargs -I %% bash -c 'python3 ~/Tools/SecretFinder/SecretFinder.py -i %% -e -o cli' > $dir/$1_secretfinder; 
#interlace -tL $dir/$1_probed -threads 5 -c "python3 ~/Tools/SecretFinder/SecretFinder.py -i _target_ -o cli >> $dir/$1_secretfinder" -v
cat $dir/$1_secretfinder | grep 'google_api' -B 1 | sort -u > $dir/$1_gmapapi;

