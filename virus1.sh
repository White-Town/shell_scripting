#! /bin/bash
#my first virus using bash scripting...... Naresh...using switch case for loop with iteration and if statement.
echo choose the menu from below
echo a=check the system details
echo b=create a bulk folder and files 
echo c=to crash entire file system and make it unrecoverable
read choice 
case $choice in
	a) uname -a
	       	hostname
	       	whoami;;
        b)read -p "enter the number of file and directory to create  " num
		for ((j=1;j<=$num;j++))
		do
                        touch file$j
	         	mkdir dir$j
        	done;;
        c) if [ $UID -eq 0 ]
        then
	      echo "system crashed"  # warning : use rm -rf/* here..don't run this code without permission.
	else
		echo "login from root user to run this program"
	fi;;
	*) echo "invalid option selected go above and select right option again"

esac
	




	
