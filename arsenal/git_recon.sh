#!/bin/sh

dir=~/Recon/$1

cat $dir/$1_resolved | git-hound --dig-commits --dig-files > $dir/$1_gitrecon
