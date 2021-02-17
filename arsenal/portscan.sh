#!/bin/sh

dir=~/Recon/$1

naabu -iL $dir/$1_subdomains > $dir/$1_portscan;

