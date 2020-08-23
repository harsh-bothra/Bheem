# Project Bheem 

Project Bheem is a simple collection of small bash-scripts which runs iteratively to carry out day-to-day recon process and store output in an organized way. However, this tool was never meant to be public as there is nothing fancy about it but due to request by community, I have decided to make it public. 
Please feel free to improve it in any way you can. There is no secret sauce involved and it's just a set of commands and existing tools written in bash-scripts for my own personal automation. 

# Remember

1. Please clone this repo into the "root" directory so that it "install.sh" can automatically move the relevant scripts. 
2. Otherwise, manually transfer the "arsenal" folder to "root" directory.
# Installation

1. Clone the repository
2. Run the following script to install necessary tools: ``sh install.sh``
3. The ``arsenal`` directory contains a set of small scripts used to automate Bheem. 
4. Simply run following command to use Bheem:

``Bheem <target_file>`` 

Example: ``Bheem target.txt`` 

5. To use it over vps for performing recon on larger set of targets perform following command:

``screen -S <screen_name>``
``Bheem <target_file>``

6. This will keep ``Bheem`` running even if the SSH Connection is terminated or you turn off your local machine.

~ Make sure to replace your Chaos API key (Hardcoded key is not Valid), otherwise comment that part.

# Tools Used 

1. Nuclei
2. HTTPX
3. GF & GF-Patterns
4. Secret Finder
5. Heartbleed Oneliner
6. AMASS
7. Subfinder
8. Assetfinder
9. Chaos Client
10. FavFreak
11. Waybackurls 
12. Gau

~ A lot of other onliners and tools to be added. 

# Future Plans/Under Development

1. Adding Directory Enumeration
2. Adding Subdomain Bruteforcing
3. Adding HTTP Desync Scanner
4. Adding Vulnerable Software & Exploit Suggester
5. Adding Oneline Scanner for CORS, CRLF & Other Vectors
6. Adding Visual Recon 
7. Adding HTTP Header Security Analysis
8. Adding Other attack vectors along with development.

# Special Thanks

Every single application security community member and tool developers. Special Thanks to:

1. Project Discovery (Httpx, Subfinder, chaos, nuclei)
2. OWASP (Amass)
3. Tomnomnom (Assetfinder, Waybackurls, GF)
4. Devansh (FavFreak)
5. Imran (Heartbleed oneliner)
6. M4ll0k (Secret Finder)
7. lc (gau)

### Please feel free to contribute.