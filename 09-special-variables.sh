#!/bin/bash

echo "Script Name: $0"        # Name of the script
echo "First Argument : $1"     # First argument
echo "Second Argument: $2"     # Second argument
echo "Total Arguments: $#"     # Number of arguments
echo "All Arguments  : $*"     # All arguments as a single string
echo "All Arguments  : $@"     # All arguments as separate strings
echo "Last Command Exit Status: $?"  # Exit status of the last command
echo "Current Process ID: $$"   # Process ID of the current script
echo "Previous Process ID: $!"  # Process ID of the last background command
sleep 1 &  # Example background command
wait        # Wait for background command to finish
echo "Previous Process ID after wait: $!"  # Process ID of the last background command
echo "Home Directory: $HOME"  # Home directory of the current user
echo "Current User: $USER"     # Current logged-in user
echo "Current working Directory: $PWD"  # Current working directory
echo "Shell Name: $SHELL"      # Name of the current shell
echo "Last Argument of Previous Command: $_"  # Last argument of the previous command