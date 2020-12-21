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

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

small_recon(){
    echo '-----------------------------------------------------'
    echo "${red} Starting Small Scope Recon on : ${green} [$(echo $target)] ${reset}"
    echo '-----------------------------------------------------'
	
          bash ~/arsenal/small.sh $target

    echo '-----------------------------------------------------'
    echo "${red} Starting Small Scope Recon on : ${green} [$(echo $target)] ${reset}"
    echo '-----------------------------------------------------'

}

medium_recon(){
    echo '-----------------------------------------------------'
    echo "${red} Starting Medium Scope Recon on : ${green} [$(echo $target)] ${reset}"
    echo '-----------------------------------------------------'

          bash ~/arsenal/medium.sh $target

    echo '-----------------------------------------------------'
    echo "${red} Starting Medium Scope Recon on : ${green} [$(echo $target)] ${reset}"
    echo '-----------------------------------------------------'

}

large_recon(){
    echo '-----------------------------------------------------'
    echo "${red} Starting Large Scope Recon on : ${green} [$(echo $target)] ${reset}"
    echo '-----------------------------------------------------'

          bash ~/arsenal/large.sh $target

    echo '-----------------------------------------------------'
    echo "${red} Starting Large Scope Recon on : ${green} [$(echo $target)] ${reset}"
    echo '-----------------------------------------------------'

}

while getopts ":t:eSMLh" opt; do
	case ${opt} in
		t ) target=$OPTARG
		    ;;
		e ) exclude=$OPTARG
		    ;;
		S ) small_recon
		    ;;
		M ) medium_recon
		    ;;
		L ) large_recon
		    ;;
		\? | h ) echo "Usage  :";
			 echo "         -t	List of target";
			 echo "		-e	Exclude target.(eg: sub1.ex.com,sub2.ex.com)";
			 echo "         -S	Perform Small Recon";
			 echo "         -M	Perform Medium Recon";
			 echo "         -L	Perform Large Recon";
			 echo "         -h	Displays the usage details";
		         ;;
		: ) echo "Invalid Argument";
		     ;;
	esac
done
shift $((OPTIND -1))
