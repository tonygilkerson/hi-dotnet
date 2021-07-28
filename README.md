# hi-dotnet

My hello world dotnet app

## How to run this app

There are three methods for how to run this app described below. Pick the one that best suites your needs.

> *Note* - all commands shown should be ran from the root folder of this project

### 1 - Run using a platform-specific executableble

This project contains several pre-built executables files that are platform specific.  Select the one that matches your platform.

```sh
# Linux
./bin/Release/net5.0/linux-x64/publish/hi-dotnet

# Mac
./bin/Release/net5.0/osx-x64/publish/hi-dotnet

# Windows
./bin/Release/net5.0/win10-x64/publish/hi-dotnet.exe
```

Note: I am not actually ging to check the BINs into GitHub so you will need to run own of the following commands to build the executables:

```sh
dotnet publish -c Release -r osx-x64 --self-contained true
dotnet publish -c Release -r linux-x64 --self-contained true
dotnet publish -c Release -r win10-x64 --self-contained true
```

### 2 - Run using a Docker continer

A Dockerfile is included with this project.  To launch a docker contaner with this app included, simply build the Dockerfile and the issue a `docker run` command. 

```sh
# Build a docker image
docker build -t hi-dotnet:latest .

# Launch a docker container from the image you just created
docker run -it --rm hi-dotnet:latest
```

### 3 - Run by building from source code

You will need to have the [.Net Framwork](https://dotnet.microsoft.com/download/dotnet-framework) installed and this project expanded into a folder of your choice, for examle, you could use `~/myprojects/hi-dotnet`.

From the project root folder, run the follwing commands to build and run the app.

```sh
# Build
dotnet publish -c Release

# Run
dotnet bin/Release/net5.0/publish/hi-dotnet.dll
```

## Reference

Used in the building of this app

* [deploy with cli](https://docs.microsoft.com/en-us/dotnet/core/deploying/deploy-with-cli)
* [.NET RID Catalog](https://docs.microsoft.com/en-us/dotnet/core/rid-catalog)
