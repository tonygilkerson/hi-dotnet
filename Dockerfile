FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /source
COPY . .
RUN dotnet publish -c Release

# final stage/image
FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY --from=build /source/bin/Release/net5.0/publish /app
CMD ["dotnet", "hi-dotnet.dll"]
