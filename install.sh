#!/bin/sh

sudo apt-get install golang;
sudo apt-get install python3;
sudo apt-get install python3-pip;
sudo apt-get install ruby;
sudo apt-get install screen;
sudo apt-get install git;
sudo su;
mkdir /root/Tools;
mkdir /root/Recon;
mv /root/Bheem/arsenal /root/arsenal;
dir=/root/Tools;
go get -u github.com/m4ll0k/Aron;
go get github.com/Ice3man543/SubOver;
git clone https://github.com/tomnomnom/hacks $dir/hacks;
go get -u github.com/tomnomnom/assetfinder;
go get github.com/tomnomnom/hacks/waybackurls;
pip install requests;
GO111MODULE=on go get -u -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei;
git clone https://github.com/projectdiscovery/nuclei-templates $dir/nuclei-templates;
go get github.com/haccer/subjack;
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/cmd/subfinder;
GO111MODULE=on go get -u github.com/projectdiscovery/chaos-client/cmd/chaos;
GO111MODULE=on go get -u -v github.com/hahwul/dalfox;
go get github.com/ffuf/ffuf;
GO111MODULE=on go get -u -v github.com/lc/gau;
go get -u github.com/tomnomnom/gf;
echo 'source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc;
cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf;
go get github.com/hakluke/hakcheckurl;
go get github.com/hakluke/hakrawler;
go get github.com/hakluke/hakrevdns;
GO111MODULE=on go get -u -v github.com/projectdiscovery/httpx/cmd/httpx;
git clone https://github.com/devanshbatham/FavFreak $dir/FavFreak;
git clone https://github.com/m4ll0k/SecretFinder $dir/SecretFinder;
git clone https://github.com/YashGoti/crtsh.py $dir/crtsh.py;

echo "
alias osmedeus='python3 /root/Tools/Osmedeus/osmedeus.py -m "subdomain,portscan,vuln,git,burp,ip" -t'
alias dirsearch='python3 /root/Tools/dirsearch/dirsearch.py -e php,asp,js,aspx,jsp,py,txt,conf,config,bak,backup,swp,old,db,sql -t 300 -u'
alias ffuf=/root/go/bin/ffuf
alias httpx=/root/go/bin/httpx
alias resolver=/root/arsenal/resolver.sh
alias subunique=/root/arsenal/unique_lister.sh
alias gau=/root/go/bin/gau
alias secretfinder='python3 /root/Tools/SecretFinder/SecretFinder.py'
alias nuclei=/root/go/bin/nuclei
alias nuclear=/root/arsenal/nuclear.sh
alias getsec=/root/arsenal/getsec.sh
alias rex=/root/arsenal/rex.sh
alias Bheem=/root/arsenal/Bheem.sh
alias reverse=/root/arsenal/reverse.sh
" >> ~/.bashrc

source ~/.bashrc;
export  PATH=$PATH:/root/go/bin; 

