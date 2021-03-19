#!/bin/sh -l

# Setup variables
path=$1
token=$2

# Confirm existence of folder
if [ -d $path ]; then
    echo "$path exists"

    # Install dotnet format
    dotnet tool install -g dotnet-format

    # Format files in folder

    # Check for changes

    # Commit

    # Push

else
    echo "$path does not exist"


fi