#!/bin/sh

dir=~/Recon/$1

python ~/toolkit/CORScanner/cors_scan.py -i  $dir/$1_probed -t 200 > $dir/$1_cors;

