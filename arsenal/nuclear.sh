#!/bin/bash

dir=~/Recon/$1

cat $dir/$1_probed | ~/go/bin/nuclei -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0" -c 500 -silent -t ~/Tools/nuclei-templates/ -o $dir/$1_nuclei;

