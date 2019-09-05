FROM mcr.microsoft.com/dotnet/core/sdk:2.2-alpine3.9 as build
WORKDIR /app

COPY *.csproj ./
RUN dotnet restore

COPY . ./
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/core/runtime:2.2-alpine3.9

LABEL "com.github.actions.name"="Dotnet Hello World"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="red"
LABEL "com.github.actions.description"="Trying to run C# code as a Github Action"

COPY --from=build /app/out .
RUN apk add --no-cache tree
ENTRYPOINT ["tree"]

