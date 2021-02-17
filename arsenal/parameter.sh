#!/bin/sh

dir=~/Recon/$1

python3 ~/Tools/ParamSpider/paramspider.py  -d $1 -l high -o $dir/$1_params  --exclude woff,css,js,png,svg,php,jpg;
