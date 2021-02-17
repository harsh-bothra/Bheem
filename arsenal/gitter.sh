#!/bin/sh
dir=~/Recon/$1
cat $dir/$1_probed | git-hound --dig-files --dig-commits > $dir/$1_gitrecon

