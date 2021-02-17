#!/bin/bash

dir=~/Recon/$1

cat $dir/$1_probed | nuclei -c 500 -silent -t ~/nuclei-templates/ -o $dir/$1_nuclei;

