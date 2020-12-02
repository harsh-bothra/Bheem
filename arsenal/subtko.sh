#!/bin/sh

dir=~/Recon/$1

[[ -f ~/go/src/github.com/manasmbellani/subjack/fingerprints.json ]] || wget -q -O ~/go/src/github.com/manasmbellani/subjack/fingerprints.json https://raw.githubusercontent.com/manasmbellani/subjack/master/fingerprints.json
subjack -w $dir/$1_subdomains -timeout 30 -ssl -c ~/go/src/github.com/manasmbellani/subjack/fingerprints.json -v -m -o $dir/result_subdomain_takeover.txt
