#!/bin/sh

dir=~/Recon/$1

subjack -w $dir/$1_subdomains -timeout 30 -ssl -c ~/go/src/github.com/manasmbellani/subjack/fingerprints.json -v -m -o $dir/result_subdomain_takeover.txt
