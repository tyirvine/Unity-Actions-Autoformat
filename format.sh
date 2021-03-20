#!/bin/sh -l

# Setup colours
Reset='\033[0m'       # Text Reset
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green

# Setup variables
path=$1

# Install dotnet
dotnet tool install -g dotnet-format

# Set the path to the tool
export PATH="$PATH:/github/home/.dotnet/tools"

# Clean up the console
printf "\n"
printf "\n"
printf "\n"
printf "\n"
printf "\n"

# Confirm existence of folder
if [ -d $path ]; then

    # Announce that the path exists
    echo "${Green}$path exists ${Reset}✅"

    # Format files in folder
    dotnet format -f -w $path

    # Check for changes
    if [ -n "$(git status --porcelain)" ]; then
        # Changes
        echo "${Green}Changes detected${Reset}"

        # Configure Git
        git config --global user.email "41898282+github-actions[bot]@users.noreply.github.com"
        git config --global user.name "github-actions[bot]"

        # Commit
        git add -A
        git commit -m "Formatted Scripts"

        # Push
        git push

    else
        # No changes
        echo "No changes detected"

    fi

else
    echo "${Red}$path does not exist${Reset}"

fi