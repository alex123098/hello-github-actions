#!/bin/sh -l

pushd /src
dotnet publish -c Release -o /out
