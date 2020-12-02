#!/bin/sh

sudo apt-get install python3;
sudo apt-get install python3-pip;
sudo apt-get install ruby;
sudo apt-get install golang;
sudo apt-get install screen;
sudo apt-get install git;
mkdir ~/.gf
mkdir ~/Tools;
mkdir ~/Recon;
dir=~/Tools;
go get github.com/Ice3man543/SubOver;
go get -u github.com/tomnomnom/gf;
go get -u github.com/tomnomnom/assetfinder;
go get -u -v github.com/projectdiscovery/naabu/v2/cmd/naabu;
go get github.com/tomnomnom/hacks/waybackurls;
go get -u -v github.com/lukasikic/subzy;
go install -v github.com/lukasikic/subzy;
go get -u -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei;
git clone https://github.com/projectdiscovery/nuclei-templates $dir/nuclei-templates;
go get github.com/haccer/subjack;
GO111MODULE=on go get -u -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
go get -u github.com/projectdiscovery/chaos-client/cmd/chaos;
go get -u -v github.com/hahwul/dalfox;
go get -u -v github.com/lc/gau;
go get github.com/003random/getJS;
go get github.com/hakluke/hakcheckurl;
go get github.com/hakluke/hakrawler;
go get github.com/hakluke/hakrevdns;
go get -u -v github.com/projectdiscovery/httpx/cmd/httpx;
git clone https://github.com/blechschmidt/massdns $dir/massdns;
cd $dir/massdns; make;
cp $dir/massdns/bin/massdns /usr/bin/;
git clone https://github.com/devanshbatham/FavFreak $dir/FavFreak;
git clone https://github.com/GerbenJavado/LinkFinder $dir/LinkFinder;
git clone https://github.com/m4ll0k/SecretFinder $dir/SecretFinder;
git clone https://github.com/devanshbatham/ParamSpider $dir/ParamSpider;
git clone https://github.com/Edu4rdSHL/findomain.git;
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh ;
cd $dir/findomain;
~/.cargo/bin/cargo build --release;
mv $dir/findomain/target/release/findomain ~/go/bin/;
go get -u -v github.com/projectdiscovery/dnsprobe;
git clone https://github.com/maurosoria/dirsearch $dir/dirsearch;
git clone https://github.com/ozguralp/gmapsapiscanner $dir/gmapsapiscanner;
go get -u -v github.com/projectdiscovery/shuffledns/cmd/shuffledns;
git clone https://github.com/1ndianl33t/Gf-Patterns;
pip3 install -r ~/arsenal/requirements.txt
mv ~/Gf-Patterns/*.json /root/.gf/;
rm -rf ~/Gf-Patterns;
cd ~/.gf; wget https://raw.githubusercontent.com/devanshbatham/ParamSpider/master/gf_profiles/potential.json;
cd ~/go/bin; wget https://raw.githubusercontent.com/Ice3man543/SubOver/master/providers.json;
git clone https://github.com/KathanP19/JSFScan.sh $dir/JSFScan.sh;
mv arsenal ~/arsenal;
