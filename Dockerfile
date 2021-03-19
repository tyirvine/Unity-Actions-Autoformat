# Container image that runs your code
# FROM alpine:3.10
# FROM mcr.microsoft.com/dotnet/sdk:5.0
ARG REPO=mcr.microsoft.com/dotnet/aspnet
FROM $REPO:5.0-alpine3.13-amd64

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY format.sh /format.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/format.sh"]
