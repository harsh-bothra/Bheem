#!/bin/sh

#sudo apt-get install golang;
#sudo apt-get install python3;
sudo apt-get install python3-pip;
sudo apt-get install ruby;
sudo apt-get install screen;
sudo apt-get install git;
mkdir ~/Tools;
mkdir ~/Recon;
mkdir ~/wordlist;
mv ~/Bheem/arsenal ~/arsenal;
dir=~/Tools;
go get -u github.com/m4ll0k/Aron;
go get github.com/Ice3man543/SubOver;
go get github.com/ffuf/ffuf;
git clone https://github.com/tomnomnom/hacks $dir/hacks;
go get -u github.com/tomnomnom/assetfinder;
go get github.com/tomnomnom/hacks/waybackurls;
pip3 install requests;
git clone https://github.com/projectdiscovery/nuclei.git; cd nuclei/cmd/nuclei/; go build; mv nuclei ~/go/bin/; cd ~;
git clone https://github.com/tillson/git-hound ~/Tools/git-hound; cd /root/Tools/git-hound; go build; mv git-hound /root/go/bin/; cd ~;
git clone https://github.com/projectdiscovery/nuclei-templates $dir/nuclei-templates;
go get github.com/haccer/subjack;
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/cmd/subfinder;
GO111MODULE=on go get -u github.com/projectdiscovery/chaos-client/cmd/chaos;
GO111MODULE=on go get -u -v github.com/hahwul/dalfox;
go get github.com/ffuf/ffuf;
wget https://raw.githubusercontent.com/Mad-robot/recon-tools/master/dicc.txt -o ~/wordlist/dicc.txt
GO111MODULE=on go get -u -v github.com/lc/gau;
go get github.com/manasmbellani/subjack
go get -v github.com/harleo/asnip
go get -u github.com/tomnomnom/gf;
git clone https://github.com/1ndianl33t/Gf-Patterns;
mv ~/Gf-Patterns/*.json ~/.gf;
rm -rf ~/Gf-Patterns;
wget https://raw.githubusercontent.com/devanshbatham/ParamSpider/master/gf_profiles/potential.json;
mv ~/potential.json ~/.gf;
#echo source $GOPATH/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc;
cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf;
GO111MODULE=on go get -u -v github.com/projectdiscovery/httpx/cmd/httpx;
git clone https://github.com/devanshbatham/FavFreak $dir/FavFreak;
git clone https://github.com/m4ll0k/SecretFinder $dir/SecretFinder;
git clone https://github.com/YashGoti/crtsh.py $dir/crtsh.py;
git clone https://github.com/defparam/smuggler $dir/smuggler;
git clone https://github.com/sensepost/gowitness $dir/gowitness;
cd $dir/gowitness;
go build .;
cd ~;

echo "
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
alias osmedeus='python3 ~/Tools/Osmedeus/osmedeus.py -m subdomain,portscan,vuln,git,burp,ip -t'
alias dirsearch='python3 ~/Tools/dirsearch/dirsearch.py -e php,asp,js,aspx,jsp,py,txt,conf,config,bak,backup,swp,old,db,sql -t 300 -u'
alias ffuf=~/go/bin/ffuf
alias httpx=~/go/bin/httpx
alias gf=~/go/bin/gf
alias waybackurls=~/go/bin/waybackurls
alias resolver=~/arsenal/resolver.sh
alias subunique=~/arsenal/unique_lister.sh
alias gau=~/go/bin/gau
alias secretfinder='python3 ~/Tools/SecretFinder/SecretFinder.py'
alias nuclei=~/go/bin/nuclei
alias nuclear=~/arsenal/nuclear.sh
alias getsec=~/arsenal/getsec.sh
alias rex=~/arsenal/rex.sh
alias Bheem=~/arsenal/Bheem.sh
alias reverse=~/arsenal/reverse.sh
alias smuggling=~/arsenal/smuggler.sh
alias asnip=~/go/bin/asnip
" >> ~/.bash_profile

source ~/.bash_profile;
#export  PATH=$PATH:~/go/bin; 

