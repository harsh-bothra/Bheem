#!/bin/bash

dir=/root/Recon/$1

cat $dir/$1_subdomains| httpx -silent |sort -u| nuclei -c 200 -silent -t /root/Tools/nuclei-templates/ -o $dir/$1_nuclei
