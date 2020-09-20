#!/bin/bash

logo(){
echo    '                                                        ';
echo -e '\e[38;5;88m______            _______  _______  _______  ';
echo -e '\e[38;5;88m(  ___ \ |\     /|(  ____ \(  ____ \(       )';
echo -e '\e[38;5;215m| (   ) )| )   ( || (    \/| (    \/| () () |';
echo -e '\e[38;5;215m| (__/ / | (___) || (__    | (__    | || || |';
echo -e '\e[38;5;215m|  __ (  |  ___  ||  __)   |  __)   | |(_)| |';
echo -e '\e[38;5;208m| (  \ \ | (   ) || (      | (      | |   | |';
echo -e '\e[38;5;208m| )___) )| )   ( || (____/\| (____/\| )   ( |';
echo -e '\e[38;5;208m|/ \___/ |/     \|(_______/(_______/|/     \|';
echo -e '\e[38;5;208m                                             ';

echo -e '\e[38;5;208mAutomated with <3 by Harsh Bothra (@harshbothra_) & Kathan Patel (@KathanP19)\e[0m';
}

logo

user=$(echo "$(whoami)")
dir=~/arsenal
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`


single_domain(){
echo '_________________________________________________________'
echo  "${red} Performing : ${green} Recon on $url ${reset}"
echo '---------------------------------------------------------'
      if [[ $url == "" ]]; then
		dir=~/arsenal
		echo "$urls" | while read target; do $dir/single.sh $target;done
      elif [[ $urls == "" ]]; then
		dire=~/Recon/$url
		mkdir -p $dire
      		echo "$url" >> $dire/_subdomains
      		echo "$url" | httpx -follow-redirects -status-code -vhost -threads 300 -silent | sort -u | grep "[200]" | cut -d [ -f1 | uniq >> $dire/_resolved
      fi
echo '_________________________________________________________'
echo  "${green} Completed : ${red} Setup For $url  ${reset}"
echo '_________________________________________________________'
}

get_subdomain(){
echo '_________________________________________________________'
echo  "${red} Performing : ${green} Subdomain Scanning & Resolving ${reset}"
echo '---------------------------------------------------------'
      dir=~/arsenal
      for target in $urls
      do 
	$dir/resolver.sh $target
      done
echo '_________________________________________________________'
echo  "${green} Completed : ${red} Subdomain Scanning & Resolving Done ${reset}"
echo '_________________________________________________________'
}

dir_brute(){
echo '_________________________________________________________'
echo  "${red} Performing : ${green} Directoy Brute-Force AKA Content Discovery ${reset}"
echo '---------------------------------------------------------'
      if [[ $url == "" ]]; then
		dir=~/arsenal
		echo "$urls" | while read target; do $dir/ffuf.sh $target;done
      elif [[ $urls == "" ]]; then
		dir=~/Recon/$url
		ffuf -mc all -c -H "X-Forwarded-For: 127.0.0.1" -H "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0" -u "https://$url/FUZZ" -w ~/wordlist/dicc.txt -D -e js,php,bak,txt,asp,aspx,jsp,html,zip,jar,sql,json,old,gz,shtml,log,swp,yaml,yml,config,save,rsa,ppk -ac -o $dir/$url.tmp
		cat $dir/$url.tmp | jq '[.results[]|{status: .status, length: .length, url: .url}]' | grep -oP "status\":\s(\d{3})|length\":\s(\d{1,7})|url\":\s\"(http[s]?:\/\/.*?)\"" | paste -d' ' - - - | awk '{print $2" "$4" "$6}' | sed 's/\"//g' > $dir/result_dir.txt
      fi
echo '_________________________________________________________'
echo  "${green} Completed : ${red} Directoy Brute-Force AKA Content Discovery Done ${reset}"
echo '_________________________________________________________'
}

service_scan(){
echo '_________________________________________________________'
echo  "${red} Performing : ${green} Nuclei Scan For Techonolgy and Services Vulnerablities ${reset}"
echo '---------------------------------------------------------'
      if [[ $url == "" ]]; then
		dir=~/arsenal
		echo "$urls" | while read target; do $dir/nuclear.sh $target;done
      elif [[ $urls == "" ]]; then
		dir=~/Recon/$url
		cat $dir/_subdomains | httpx -silent |sort -u| nuclei -c 100 -silent -t ~/Tools/nuclei-templates/ -o $dir/_nuclei
      fi
echo '_________________________________________________________'
echo  "${green} Completed : ${red} Nuclei Scan For Techonolgy and Services Vulnerablities Done ${reset}"
echo '_________________________________________________________'
}

js_secret_scan(){
echo '_________________________________________________________'
echo  "${red} Performing : ${green} Scan JsFiles For Secrets ${reset}"
echo '---------------------------------------------------------'
      if [[ $url == "" ]]; then
		dir=~/arsenal
		echo "$urls" | while read target; do $dir/getsec.sh $target;done
      elif [[ $urls == "" ]]; then
		dir=~/Recon/$url
		cat $dir/_resolved | xargs -I %% bash -c 'python3 ~/Tools/SecretFinder/SecretFinder.py -i %% -e -o cli' > $dir/_secretfinder 
      fi
echo '_________________________________________________________'
echo  "${green} Completed : ${red} Scan JsFiles For Secrets Done ${reset}"
echo '_________________________________________________________'
}

get_urls(){
echo '_________________________________________________________'
echo  "${red} Performing : ${green} Get Url From Different Sources and Filtering Parameters ${reset}"
echo '---------------------------------------------------------'
      if [[ $url == "" ]]; then
		dir=~/arsenal
		echo "$urls" | while read target; do $dir/extractor.sh $target;done
      elif [[ $urls == "" ]]; then
		dir=~/arsenal
		echo "$url" | while read target; do $dir/extractor.sh $target;done
      fi
echo '_________________________________________________________'
echo  "${green} Completed : ${red} Gathering Urls and Parameters ${reset}"
echo '_________________________________________________________'
}

github_recon(){
echo '_________________________________________________________'
echo  "${red} Performing : ${green} GITHUB Recon ${reset}"
echo '---------------------------------------------------------'
      dir=~/arsenal
      for target in $urls
      do 
	$dir/git_recon.sh $target
      done
echo '_________________________________________________________'
echo  "${green} Completed : ${red} GITHUB ReconDone ${reset}"
echo '_________________________________________________________'
}

sub_tko(){
echo '_________________________________________________________'
echo  "${red} Performing : ${green} Subdomain Takover Scanning ${reset}"
echo '---------------------------------------------------------'
      dir=~/arsenal
      for target in $urls
      do 
	$dir/subtko.sh $target
      done
echo '_________________________________________________________'
echo  "${green} Completed : ${red} Subdomain Takover Scanning Done ${reset}"
echo '_________________________________________________________'
}

port_scan(){
echo '_________________________________________________________'
echo  "${red} Performing : ${green} Port Scanning ${reset}"
echo '---------------------------------------------------------'
      dir=~/arsenal
      for target in $urls
      do 
	$dir/portscan.sh $target
      done
echo '_________________________________________________________'
echo  "${green} Completed : ${red} Port Scanning Done ${reset}"
echo '_________________________________________________________'
}

asn_cidr(){
echo '_________________________________________________________'
echo  "${red} Performing : ${green} ASN -> CIDR -> IP ${reset}"
echo '---------------------------------------------------------'
      dir=~/arsenal
      for target in $urls
      do 
	$dir/asn_cidr_ip.sh $target
      done
echo '_________________________________________________________'
echo  "${green} Completed : ${red} ASN -> CIDR - IP Enum ${reset}"
echo '_________________________________________________________'
}

reverse_whois(){
echo '_________________________________________________________'
echo  "${red} Performing : ${green} Reverse Whois lookup ${reset}"
echo '---------------------------------------------------------'
      dir=~/arsenal
      for target in $urls
      do 
	$dir/reverse.sh $target
      done
echo '_________________________________________________________'
echo  "${green} Completed : ${red} Reverse Whois lookup ${reset}"
echo '_________________________________________________________'
}

cidr_ip(){
echo '_________________________________________________________'
echo  "${red} Performing : ${green} CIDR -> Domain ${reset}"
echo '---------------------------------------------------------'
      dir=~/arsenal
      for target in $urls
      do 
	$dir/cidr_to_ip.sh $target
      done
echo '_________________________________________________________'
echo  "${green} Completed : ${red} CIDR -> Domain Enum ${reset}"
echo '_________________________________________________________'
}

screenshot(){
echo '_________________________________________________________'
echo  "${red} Performing : ${green} Screenshot ${reset}"
echo '---------------------------------------------------------'
      dir=~/arsenal
      for target in $urls
      do 
	$dir/screenshoter.sh $target
      done
echo '_________________________________________________________'
echo  "${green} Completed : ${red} Screenshot ${reset}"
echo '_________________________________________________________'
}

small_recon(){
single_domain
export urls=$urls
export url=$url
export -f dir_brute && export -f js_secret_scan && export -f get_urls && export -f service_scan
parallel ::: dir_brute js_secret_scan get_urls service_scan ::: $url
unset url
unset urls
}

medium_recon(){
get_subdomain
export urls=$urls
export url=$url
export -f sub_tko && export -f dir_brute && export -f service_scan && export -f js_secret_scan && export -f get_urls && export -f github_recon && export -f port_scan && export -f screenshot
parallel ::: sub_tko github_recon port_scan dir_brute js_secret_scan get_urls service_scan screenshot ::: $urls
unset url
unset urls
}

large_recon(){
get_subdomain
asn_cidr
reverse_whois 
export urls=$urls
export url=$url
export -f sub_tko && export -f dir_brute && export -f service_scan && export -f js_secret_scan && export -f get_urls && export -f github_recon && export -f port_scan && export -f cidr_ip && export -f screenshot
parallel ::: sub_tko cidr_ip github_recon port_scan dir_brute js_secret_scan get_urls service_scan screenshot ::: $urls
unset url
unset urls
}

while getopts ":t:d:u:SMLh" opt; do
	case ${opt} in
		t ) urls="$(cat $OPTARG)"
		    ;;
		d ) url=$OPTARG
		    ;;
		u ) urls=$OPTARG
		    ;;
		S ) small_recon
		    ;;
		M ) medium_recon
		    ;;
		L ) large_recon
		    ;;
		\? | h ) echo "Usage  :";
			 echo "         -t	List of target";
			 echo "         -d	Single Domain Recon";
			 echo "         -u	Single Wildcard Domain Recon";
			 echo "         -S	Perform Small Recon";
			 echo "         -M	Perform Medium Recon";
			 echo "         -L	Perform Large Recon";
		         ;;
		: ) echo "Invalid Argument";
		     ;;
	esac
done
shift $((OPTIND -1))
