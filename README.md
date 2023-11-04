# Docker-DotnetCore


first check if the dotnet app is running without build errors  by using  "dotnet run" command

then create docker image with docker fiel. (. means  Dockerfile present in the current folder)

  docker build -t dotnetimage2 .

#port mapping
 docker run -d -p 8081:6677 --name dotnetcontainer3 dotnetimage2



winpty docker exec -it dotnetcontainer3 ls /bin/bash


