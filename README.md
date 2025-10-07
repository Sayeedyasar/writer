# File Writer Project

## Overview

The File Writer Project is an interactive Bash script designed to simplify file creation and editing. It allows users to select a file type (e.g., .txt, .py, .c), name the file, and choose whether to edit it, all through a user-friendly menu. This project demonstrates proficiency in Bash scripting, file processing, and user interaction, making it a valuable tool for automation and system administration tasks.
Key Features

## Interactive Menu
Uses the select command to let users choose file types.
File Creation: Creates files with user-specified names and extensions using touch.
File Existence Handling: Checks for existing files and offers overwrite options.
File Editing: Allows users to edit files directly using an editor (e.g., nano) or input content via the terminal.
Error Handling: Includes input validation and error messages for robustness.

## Prerequisites
To run this script, you need:

A Unix-like system (e.g., Linux, macOS, or WSL on Windows).
Bash shell (/bin/bash).
A text editor like nano or vim (optional, for editing files).
Basic file system permissions to create and edit files in the working directory.




## Verify Dependencies:

Ensure vim or your preferred editor is installed 
No additional dependencies are required for core functionality.



## Usage
Run the script and follow the prompts to create and edit a file.
Command
<b> ./<fileanme>.sh </b>

## Code Highlights
The script uses several Bash constructs:

select Loop: Creates an interactive menu for file type selection.
File Processing: Uses touch for file creation and cat for writing content.
Error Handling: Validates user input and checks file existence with [ -e ].
User Interaction: Prompts for file names, overwrite decisions, and editing choices.

## Contributing
Contributions are welcome! To contribute:

Fork the repository.
Create a new branch (git checkout -b feature/your-feature).
Make your changes and commit (git commit -m "Add your feature").
Push to your branch (git push origin feature/your-feature).
Open a pull request.


## Contact
For questions or feedback, reach out via GitHub issues or connect with me on LinkedIn : https://www.linkedin.com/in/sayeedyasar/ 
