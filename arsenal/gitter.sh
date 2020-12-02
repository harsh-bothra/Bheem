#!/bin/sh
dir=~/Recon/$1
cat $dir/$1_probed | ~/go/bin/githound --dig-files --dig-commits > $dir/$1_gitrecon

