#!/bin/bash

dir=~/Recon/$1

for iprange in $(cat $dir/cidrs.txt)
do
  amass intel -cidr $iprange | tee -a $dir/cidr_domain.txt
done
