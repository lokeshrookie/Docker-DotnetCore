FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env

WORKDIR /app

#copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

#copy everthind else and build
COPY . ./

#dotnet publish is a .NET CLI command that publishes a .NET application to a folder for deployment to a hosting system.
#-c Release specifies the Release configuration. The Release configuration is optimized for production environments.
#-o out specifies the output directory. The output directory is where the published application will be saved.
RUN dotnet publish -c Release -o out

#build is completed. 


#build runtime image.
From mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app

#copy built solution(dll) file from out folder in build stage

COPY --from=build-env /app/out .

EXPOSE 6677

ENTRYPOINT ["dotnet", "NetCoreProject.dll"]
