FROM mcr.microsoft.com/dotnet/core/sdk:2.2-alpine3.9 

WORKDIR /app
COPY *.csproj ./
RUN dotnet restore

COPY . ./

LABEL "com.github.actions.name"="Dotnet Hello World"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="red"
LABEL "com.github.actions.description"="Trying to run C# code as a Github Action"
RUN apk add --no-cache tree
ENTRYPOINT ["tree"]
