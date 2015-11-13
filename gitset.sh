#!/bin/bash

# setup GIT aliases

git config --global alias.co checkout; 
git config --global alias.ci commit; 
git config --global alias.st status; 
git config --global alias.br branch; 
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'; 
git config --global alias.type 'cat-file -t'; 
git config --global alias.dump 'cat-file -p'; 
git config --global status.showuntrackedfiles no; 
git config --global push.default simple;

#GIT setup GIT default user config (customize to yourself)
function gitnameandemail {
echo "------------------------------------------------"
echo "For final gitconfig setup, Please"
echo -n "Enter your full name and press [ENTER]: "
read name
echo -n "Enter your email address and press [ENTER]: "
read emailadr
}
# todo: Maybe colorize confirm anme and email?


while true=true:
do
	gitnameandemail
	echo "You entered:"
	echo "Name: $name"
	echo "Email Address:  $emailadr"
	read -r -p "Is this correct? [Y/n] " input

	case $input in
	    [yY][eE][sS]|[yY]) 
			echo "writing Git Config Global..."
			git config --global user.name "$name"; 
 			git config --global user.email $emailadr; 
 			echo "done."
			exit 0
			;;

	    [nN][oO]|[nN]) 
			# echo "No"
			
	       		;;

	    *)
		echo "Invalid input..."
		;;
	esac
done

# never reached
echo "end of script"


