FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["{HourHero}/{HourHero}.Api/{HourHero}.Api.csproj", "{HourHero}/{HourHero}.Api/"]
RUN dotnet restore "{HourHero}/{HourHero}.Api/{HourHero}.Api.csproj"
COPY . .
WORKDIR "/src/{HourHero}/{HourHero}.Api"
RUN dotnet build "{HourHero}/{HourHero}.Api/{HourHero}.Api.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "{HourHero}.Api.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "{HourHero}.Api.dll"]
