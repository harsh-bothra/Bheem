gpath=~/go/bin/
dir=~/arsenal
results=~/Recon/$domain
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
script_name="Medium_Recon"

for domain in $(cat $1); do

    echo '-----------------------------------------------------'
    echo "${red} Testing : ${green} ${domain} ${reset}"
    echo '-----------------------------------------------------'
# Performing Subdomain Enumeration
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Subdomain Enumeration ${reset}"
    echo '-----------------------------------------------------'
    $dir/subdomain.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Subdomain Enumeration 

# Performing Subdomain Bruteforcing
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Subdomain Bruteforcing ${reset}"
    echo '-----------------------------------------------------'
    $dir/subbruter.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Subdomain Bruteforcing

# Performing Subdomain Takeover
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Subdomain Takeover ${reset}"
    echo '-----------------------------------------------------'
    $dir/takeover.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Subdomain Takeover

# Performing Probing
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Probing ${reset}"
    echo '-----------------------------------------------------'
    $dir/prober.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Probing

# Performing Template Scanning with Nuclei
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Template Scanning with Nuclei ${reset}"
    echo '-----------------------------------------------------'
    $dir/nuclear.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Template Scanning with Nuclei

# Performing Port Scanning with Naabu
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Port Scanning with Naabu ${reset}"
    echo '-----------------------------------------------------'
    $dir/portscan.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Port Scanning with Naabu

# Performing URL Extraction
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} URL Extraction ${reset}"
    echo '-----------------------------------------------------'
    $dir/extractor.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished URL Extraction

# Performing Vulnerable Pattern Search
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Vulnerable Pattern Search ${reset}"
    echo '-----------------------------------------------------'
    $dir/pattern.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Vulnerable Pattern Search

# Performing Javascript Scan
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Javascript Scan ${reset}"
    echo '-----------------------------------------------------'
    $dir/jscan.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Javascript Scan

# Performing Secret Finder
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Performing Secret Finder ${reset}"
    echo '-----------------------------------------------------'
    $dir/secrets.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Secret Finder

# Performing Directory Fuzzing
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Performing Directory Fuzzing ${reset}"
    echo '-----------------------------------------------------'
    $dir/dirfuzz.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished Directory Fuzzing 

# Performing CORS Scan
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Performing CORS Scan ${reset}"
    echo '-----------------------------------------------------'
    $dir/corser.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished CORS Scan

# Performing HeartBleed Scan
    echo '-----------------------------------------------------'
    echo "${red} Performing : ${green} Performing HeartBleed Scan ${reset}"
    echo '-----------------------------------------------------'
    $dir/bleed.sh $domain;
    echo '-----------------------------------------------------'
    echo "${red} Finished : ${green} Results are saved in ${results} folder ${reset}"
    echo '-----------------------------------------------------'
# Finished HeartBleed Scan

# Finished Recon 
    echo '-----------------------------------------------------'
    echo "${red} Finished Recon on: ${green} ${domain} ${reset}"
    echo '-----------------------------------------------------'

done

# Notify discord
python3 $dir/discord_bot.py ${script_name} $1 ${results}
