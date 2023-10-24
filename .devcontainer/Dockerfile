FROM mcr.microsoft.com/vscode/devcontainers/dotnet:0-7.0

ARG NODE_VERSION="--lts"
RUN su vscode -c "umask 0002 && . /usr/local/share/nvm/nvm.sh && nvm install ${NODE_VERSION} 2>&1"

WORKDIR /installer
RUN curl -L https://aka.ms/install-dotnet-preview -o install-dotnet-preview.sh
RUN sudo bash install-dotnet-preview.sh
