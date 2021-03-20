#!/bin/sh -l

# Setup variables
path=$1
token=$2

dotnet tool install -g dotnet-format

# Confirm existence of folder
if [ -d $path ]; then
    echo "$path exists"

    # Format files in folder
    # dotnet format --version

    # Check for changes

    # Commit

    # Push

else
    echo "$path does not exist"


fi