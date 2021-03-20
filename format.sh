#!/bin/sh -l

# Setup variables
path=$1
token=$2

# Install dotnet
dotnet tool install -g dotnet-format

# Set the path to the tool
export PATH="$PATH:/github/home/.dotnet/tools"

# Confirm existence of folder
if [ -d $path ]; then

    # Announce that the path exists
    echo "$path exists"

    # Format files in folder
    dotnet format $path

    # Check for changes
    if [[ `git status --porcelain` ]]; then
        # Changes
        echo "Changes detected"
    else
        # No changes
        echo "No changes detected"

    # Commit

    # Push

else
    echo "$path does not exist"


fi