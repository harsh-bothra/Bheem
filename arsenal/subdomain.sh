#!/bin/sh

dir=~/Recon/$1
mkdir -p $dir

subfinder -d $1 > $dir/$1_unfilter_subdomains;
assetfinder --subs-only $1 >> $dir/$1_unfilter_subdomains;
#amass enum -d $1 >> $dir/$1_unfilter_subdomains;

if [ -z "$exclude" ]
then
  cat $dir/$1_unfilter_subdomains | sort -u > $dir/$1_subdomains;
else
  echo -e "\e[92m[~] Excluding domains..\e[00m"
  echo "${exclude[*]}" | cut -d',' --output-delimiter=$'\n' -f1- | tee -a $dir/"$1"_excluded.txt
  cat $dir/"$1"_unfilter_subdomains | sort -u | grep "\.$1" > $dir/tmp_Bunique.txt
  grep -vFf $dir/"$1"_excluded.txt $dir/tmp_Bunique.txt > $dir/$1_subdomains
  rm $dir/tmp_Bunique.txt
fi
