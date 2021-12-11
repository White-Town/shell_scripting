#! /bin/bash
# program to search file in the linux filesystem.
read -p "Enter the file name to search " name
for file in *
 do
   if [ $file == $name ]
    then
       echo "File found :"$file
   fi
 
 done
