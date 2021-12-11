#! /bin/bash
#write down a bash script that will show your ip details and others ip details and store it in respective files
echo "1=your ip address"
echo "2=lookup others ip"
read -p "choose from the above" choice
case $choice in 
1) read -p "enter the file name in which you want to store the details" file
    curl -s http://ipinfo.io > $file ;;
2)read -p "the filename in which you want to store the data" filename
     read -p "enter the ip address that you want to lookup" ip
   curl -s http://ipinfo.io/$ip > $filename ;; 
*) echo "invalid option selected " ;;
esac
