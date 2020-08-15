# Project Bheem 

Project Bheem is a simple collection of small bash-scripts which runs iteratively to carry out day-to-day recon process and store output in an organized way. However, this tool was never meant to be public as there is nothing fancy about it but due to request by community, I have decided to make it public. 
Please feel free to improve it in any way you can. There is no secret sauce involved and it's just a set of commands and existing tools written in bash-scripts for my own personal automation. 


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


# Tools Used 

# Future Plans/Under Development

# Special Thanks

### Please feel free to contribute.