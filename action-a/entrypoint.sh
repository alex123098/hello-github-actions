#!/bin/sh -xe

#apk add --no-cache tree
#tree

dotnet publish src/action-b.csproj -c Release -o ../out
