FROM mcr.microsoft.com/dotnet/sdk:6.0
COPY ./poojastores/ppojastores/trunk/PoojaStores/publish .
EXPOSE 80
ENTRYPOINT ["dotnet", "myWebApp.dll"]
