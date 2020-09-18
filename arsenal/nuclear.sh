#!/bin/bash

dir=~/Recon/$1

cat $dir/$1_subdomains| httpx -silent |sort -u| nuclei -c 200 -silent -t ~/Tools/nuclei-templates/ -o $dir/$1_nuclei
