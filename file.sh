#!/bin/bash 

#Currently works on formatting the text files 
## will work on other document files such as YAML,JSON files 
##


echo "what should the file be named as ?"
read file



if [[ -e "$file.txt" ]] ; 
then 
	echo"file already exists"
else 
 	touch "$file.txt"
	echo "file created as $file.txt"
	
	echo "Do you want to instert any information into the file you should created ?"
	read answer 

	if [[ "$answer" == "Yes"  || "$answer" == "yes"  || "$answer" == "s"  || "$answer" == "S" ]];
	then  
		echo "type here :"
		cat >> "$file.txt" 
	elif [[ "$answer" == "no"  ||  "$answer" == "No"  ||  "$answer" ==  "nil" ]]; 
	then 
	echo "great now you have created a empty file "
	else
	echo "cannot understand your input."
	fi
fi 
