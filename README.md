# Project Bheem 

Project Bheem is a simple collection of small bash-scripts which runs iteratively to carry out various tools and recon process & store output in an organized way. This project was created initially for automation of Recon for personal usage and was never meant to be public as there is nothing fancy about it but due to request by community, Project Bheem is now Public.  
Please feel free to improve it in any way you can. There is no secret sauce involved and it's just a set of commands and existing tools written in bash-scripts for simple Recon Automation. 

Project Bheem Supports an approach of Recon from @harshbothra_'s Scope Based Recon Methodology. Currently this tools supports performing recon for:

1. Small Scope (single urls in scope) : Performs a limited recon & useful when only a few urls are provided in scope
2. Medium Scope (\*.target.com in scope) : Performs recon to enumerate more assets and give you more options to attack on.  
3. Large Scope (Everything in Scope) : Performs almost every possible recon vector from subdomain enumeration to fuzzing. 

A few features like port scanning might not be working in the current build and some of the newly released tools might also be missed. we are working on upgrading the tool but feel free to fork, upgrade and make a pull request (Ensure that tool is not breaking).


### A big thanks to "Kathan Patel" for restructuring Project Bheem to Support Scope Based Recon.

# Pre-Requisite

1. Make sure to have "Go" latest version is installed and paths are correctly set.

# Installation

1. Clone the repository
2. Run the following script to install necessary tools: ``sh install.sh``
3. The ``arsenal`` directory contains a set of small scripts used to automate Bheem. Give executable permissions to scripts in this directory.
4. Navigate to ``~/arsenal`` directory and Simply run following command to see all the supported options provided in Bheem:

``./Bheem.sh -h`` 


5. To use it over vps for performing recon on larger set of targets perform following command:

``screen -S <screen_name>``
``~/arsenal/Bheem.sh -h``

6. This will keep ``Bheem`` running even if the SSH Connection is terminated or you turn off your local machine.

# Docker Installation
    
 - If you are lazy like me and hate wasting time in setup don't worry,we have created the docker env. to use Bheem without any setup
 - we have integrate Bheem with [Hacktools](https://github.com/xavier9909/IIEC-RISE-DOCKER-1.0-HackTools)
      
   -  ``docker pull xavier9909/hacktools_bheem`` 
   -  ``docker run -it xavier9909/hacktools_bheem``
   -  ``cd arsenal && ./Bheem.sh``
   -  ``or just simply type bheem from any directory``
 - Simply interect with the terminal and hit the target
 - one liner image publishing soon
    

# Sample Usage

1. Small Scope Recon : ``Bheem -t targetfile -S``
2. Medium Scope Recon : ``Bheem -t targetfile -M``
3. Large Scope Recon : ``Bheem -t targetfile -L``

``targetfile`` contains list of domains to perform Recon. For example: `targettest.com`

### Exclude out-of-scope subdomains

Bheem has a flag to remove out-of-scope subdomains from the scan. To do so you have to use "-e" flag with comma separated subdomains.

``Bheem -t targetfile -S -e sub.ex.com,sub1.ex.com``

# Side Notes

1. If you don't want to use specific module, just comment it out and it won't be used anymore.
2. Change the Blind XSS Payload in the following file `/Bheem/arsenal/autoxss.sh` to yours . Visit [XSS Hunter](https://xsshunter.com/) to get your Blind XSS Payload

# Tools Used 

1. Nuclei                             
2. HTTPX                            
3. GF & GF-Patterns                  
4. Secret Finder                     
5. Heartbleed Oneliner               
6. AMASS                             
7. Subfinder                          
8. Assetfinder      
9. JSScan
10. FavFreak
11. Waybackurls 
12. Gau
13. Parallel
14. asnip
15. dirsearch
16. gowitness
17. subjack
18. CORS Scanner 
19. git-hound
20. Shuffledns
21. Massdns

~ Other onliners and tools to be added. 

# PR Notes 

1. If there is any GO Version/Path related issues, please do not create a PR for it. 
2. Please create a PR for the Feature Request.
3. If there is any missing part in ``install.sh`` please create a PR for it. 
4. For specific tool related issue such as installation for `X` tool used by Bheem is not successful, please do not create a PR for it. As this issue is required to be Raise to the specific Tool Owner. 

# Future Plans/Under Development

1. Adding Directory Enumeration_
2. Adding Subdomain Bruteforcing_
3. Adding HTTP Desync Scanner_
4. Adding Vulnerable Software & Exploit Suggester
5. Adding Oneline Scanner for _CORS_, CRLF & Other Vectors
6. Adding Visual Recon
7. Adding Web Based Handling Of Results

# Special Thanks

Every single application security community member and tool developers. Special Thanks to:

1. Project Discovery (Httpx, Subfinder, chaos, nuclei)
2. OWASP (Amass)
3. Tomnomnom (Assetfinder, Waybackurls, GF)
4. Devansh (FavFreak)
5. Imran (Heartbleed oneliner)
6. M4ll0k (Secret Finder)
7. lc (gau)
8. tillson (git-hound)
9. ffuf (ffuf)
10. sensepost (gowitness)
11. defparam (smuggler)
12. haccer (subjack)
13. crt.sh (YashGoti)

### Please feel free to contribute.
