#!/bin/bash

dir=~/Recon/$1

cat $dir/$1_probed | ~/go/bin/nuclei -c 500 -silent -t ~/toolkit/nuclei-templates/ -o $dir/$1_nuclei;

