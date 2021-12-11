#!/bin/bash
# program to spoof the mac address in linux computers.
#checking the user is root or not.
if [ $UID == 0 ]  
then
echo "checking the network interfaces."
ifconfig
read -p "see the interface of its amc address  and give the name of the interface you want to change the mac address" interface
#first down the interface which we r going to spoof the mac address.
ifconfig $interface down
echo "select from below"
echo "a)change  Set random vendor MAC of the same kind."
echo "b) Set fully random MAC."
echo "c)give the custom mac address that you made"
echo "d)set the mac address in its original permanent  mac address if you have already spoofed"
read option
#using cases
case $option in 
a)macchanger -a  $interface ;;
b)macchanger -r $interface ;;
c) macchanger -m  $interface ;;
d) macchanger -p $interface ;;	
*)echo "wrong option selected ";;
esac
echo " see the  mac address of selected interface"
ifconfig $interface up
ifconfig $interface up
ifconfig  $interface 
else
echo "first login from the root user to run this command"
fi


