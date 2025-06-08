#!/bin/bash

# Script: create-file.sh
# Author: Sayeed Yasar
# Purpose: Creates a file with a specified type and optionally adds content

# Prompt for filename
echo "What should the file be named (without extension)?"
read file
if [[ ! "$file" =~ ^[a-zA-Z0-9._-]+$ ]]; then
    echo "Error: Invalid filename. Use letters, numbers, dots, underscores, or hyphens only."
    exit 1
fi

# Select file type with PS3 prompt
file_types=("txt" "py" "c" "quit")

echo "Select the file type:"
PS3="Enter the number of your choice (1-5): "
select type in "${file_types[@]}"; do
    case $type in
        "txt"|"py"|"c")
            echo "File type selected: $type"
            break
            ;;
        "quit")
            echo "Exiting."
            exit 0
            ;;
        *)
            echo "Invalid option. Please select a valid file type."
            ;;
    esac
done

file="$file.$type" 

												# Create the file
if [ -e "$file" ]; then
    echo "File already exists."
    exit 1
else
    touch "$file" || { echo "Error: Failed to create file."; exit 1; }
    echo "File created as $file"
fi

# Add a template based on file type
case $type in
    "py")
        echo -e "#!/usr/bin/env python3\n" > $file    
        echo "Added Python template to $file"
        ;;
    "txt")
        echo "No template for .txt files."
        ;;
    "c")
	echo -e "#include<stdio.h>" > $file
esac

#Editting the created file 

echo "Do you want to edit/write in the recently created file ?"
read ans

case $ans in
	"yes" | "Yes" | "s" | "S")
	 echo "Start writting here :"
	 cat >> $file
	;;

	"no" | "No")
	echo "Got it 
		Thank you..! :)"
	;;
esac















 
