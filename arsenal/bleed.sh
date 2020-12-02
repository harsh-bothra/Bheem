#!/bin/sh
dir=~/Recon/$1
cat $dir/$1_probed | while read line ; do echo "QUIT"|openssl s_client -connect $line:443 2>&1|grep 'server extension "heartbeat" (id=15)' || echo $line: safe; done


