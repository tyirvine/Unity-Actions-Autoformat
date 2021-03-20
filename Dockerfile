# Container image that runs your code
# FROM alpine:3.10
FROM mcr.microsoft.com/dotnet/sdk:5.0 as build-env

# Install dotnet
RUN dotnet tool install -g dotnet-format

# Set dotnet tool to path
ENV PATH="${PATH}:/root/.dotnet/tools"

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY format.sh /format.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/format.sh"]
