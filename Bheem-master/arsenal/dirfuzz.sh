#!/bin/sh

dir=~/Recon/$1
res=$dir/directoryEnum
mkdir $res;

python3 ~/toolkit/dirsearch/dirsearch.py -l $dir/$1_probed -t 300 -i 200,201,202,203,204,301,302,303,304 -b;
mv ~/toolkit/dirsearch/reports/ $res;


