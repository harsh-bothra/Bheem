#!/bin/sh

dir=~/recon/$1

naabu -ports full -hL $dir/$1_ips -o $dir/$1_ipresolve
