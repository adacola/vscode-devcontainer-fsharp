#!/bin/bash
set -eux

# paket
if [[ ! -d ".config" ]]; then
    dotnet new tool-manifest
    dotnet tool install paket --version 6.0.0-beta8
fi

if [[ -f "paket.lock" ]]; then
    dotnet paket restore
fi
