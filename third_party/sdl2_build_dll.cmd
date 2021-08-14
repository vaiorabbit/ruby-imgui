::
:: Usage :
:: - Open "Developer Command Prompt for VS2019" from start menu
:: - > sdl2_build_dll.cmd
::
@echo off
setlocal enabledelayedexpansion

set SDL2_VERSION=2.0.16

curl -O https://www.libsdl.org/release/SDL2-%SDL2_VERSION%.zip
powershell -Command Expand-Archive -Force SDL2-%SDL2_VERSION%.zip
cd SDL2-%SDL2_VERSION%\SDL2-%SDL2_VERSION%
mkdir build
cd build
cmake -G "Visual Studio 16 2019" -D CMAKE_BUILD_TYPE=Release -D BUILD_SHARED_LIBS=ON ..
msbuild SDL2.sln /t:rebuild /p:Configuration=Release;Platform="x64"

xcopy /y Release\SDL2.dll ..\..\..\..\sample\
cd ..\..\..
