#!/bin/sh

dir=~/Recon/$1

cat $dir/$1_resolved | while read dom; do name="$(echo "$dom" |cut -d"/" -f3)"; ffuf -mc all -c -H "X-Forwarded-For: 127.0.0.1" -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0" -u "$dom/FUZZ" -w ~/wordlist/dicc.txt -D -e js,php,bak,txt,asp,aspx,jsp,html,zip,jar,sql,json,old,gz,shtml,log,swp,yaml,yml,config,save,rsa,ppk -ac -o $dir/$name.tmp -v

cat $dir/$name.tmp | jq '[.results[]|{status: .status, length: .length, url: .url}]' | grep -oP "status\":\s(\d{3})|length\":\s(\d{1,7})|url\":\s\"(http[s]?:\/\/.*?)\"" | paste -d' ' - - - | awk '{print $2" "$4" "$6}' | sed 's/\"//g' > $dir/$name_result_dir.txt
done
