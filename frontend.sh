#! /bin/bash
# write a bash sript to show the webpage's front end code to a file whose name is defined by the user
# Front end page cloner
read -p " Enter the url to clone " url
read -p " Enter the file name" name
# Using curl 
# curl $url > $name".html"
#Using wget
wget $url && cp index.html $name".html" && rm index.html
firefox $name".html"
