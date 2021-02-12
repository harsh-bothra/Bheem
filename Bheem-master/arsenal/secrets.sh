#!/bin/sh

dir=~/Recon/$1

cat $dir/$1_probed | xargs -I %% bash -c 'python3 ~/Tools/SecretFinder/SecretFinder.py -i %% -e -o cli' > $dir/$1_secretfinder; 
cat $dir/$1_secretfinder | grep 'google_api' -B 1 | sort -u > $dir/$1_gmapapi;

