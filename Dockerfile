FROM mcr.microsoft.com/dotnet/sdk:3.1 as build-env
WORKDIR /src
COPY ./ppojastores/trunk .
RUN dotnet restore
RUN dotnet publish -c Release -o /publish

FROM mcr.microsoft.com/dotnet/aspnet:3.1 as runtime
WORKDIR /publish
COPY --from=build-env /publish .
EXPOSE 80
ENTRYPOINT ["dotnet", "PoojaStores.dll"]
