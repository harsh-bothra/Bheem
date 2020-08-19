#!/bin/sh
dir=/root/Recon/$1
cat $dir/$1_resolved| while read line ; do echo "QUIT"|openssl s_client -connect $line:443 2>&1|grep 'server extension "heartbeat" (id=15)' || echo $line: safe; done

