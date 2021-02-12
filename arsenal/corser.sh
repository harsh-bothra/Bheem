#!/bin/sh

dir=~/Recon/$1

#python ~/Tools/CORScanner/cors_scan.py -i  $dir/$1_probed -t 200 > $dir/$1_cors;
corscanner -i  $dir/$1_probed -t 200 > $dir/$1_cors;
