::
:: For Windows + RubyInstaller2 with DevKit(MSYS2 gcc & make) + CMake users.
:: - Use this script after "ridk enable"d. See https://github.com/oneclick/rubyinstaller2/wiki/The-ridk-tool for details.
::
:: Usage
:: > ridk enable
:: > build_imgui_windows.cmd  <- %PROGRAMFILES%\CMake\bin\cmake.exe, Release build.
:: > build_imgui_windows.cmd "D:\Program Files\CMake\bin\cmake.exe" <- You can give full path to 'cmake.exe'.
:: > build_imgui_windows.cmd "" Debug <- Debug build with default cmake path.
:: > build_imgui_windows.cmd "D:\Program Files\CMake\bin\cmake.exe" Debug

@echo off
setlocal enabledelayedexpansion
set CMAKE_EXE=%1
set BUILD_TYPE=%2

if "%BUILD_TYPE%"=="" (
    set BUILD_TYPE=Release
)

if /I not "%BUILD_TYPE%"=="Release" if /I not "%BUILD_TYPE%"=="Debug" (
    echo ERROR: Invalid build type "%BUILD_TYPE%". Use Release or Debug.
    exit /b 1
)

if "%CMAKE_EXE%"=="" (
    set CMAKE_EXE="%PROGRAMFILES%\CMake\bin\cmake"
)

pushd %~dp0
if not exist build (
    mkdir build
)
cd build
%CMAKE_EXE% -G "MSYS Makefiles" -D CMAKE_BUILD_TYPE=%BUILD_TYPE% -D BUILD_SHARED_LIBS=ON -D CMAKE_C_COMPILER=gcc ../
%CMAKE_EXE% --build .
copy imgui.dll ..\..\lib
popd
