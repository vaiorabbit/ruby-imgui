::
:: For Windows + RubyInstaller2 with DevKit(MSYS2 gcc & make) + CMake users.
:: - Use this script after "ridk enable"d. See https://github.com/oneclick/rubyinstaller2/wiki/The-ridk-tool for details.
::
:: Usage
:: > ridk enable
:: > imgui_dll_build.bat  <- %PROGRAMFILES%\CMake\bin\cmake.exe will be used.
:: > imgui_dll_build.bat "D:\Program Files\CMake\bin\cmake.exe" <- You can give full path to 'cmake.exe'.

@echo off
setlocal enabledelayedexpansion
set CMAKE_EXE=%1
if %CMAKE_EXE% == "" (
    set CMAKE_EXE="%PROGRAMFILES%\CMake\bin\cmake"
)

pushd %~dp0
if not exist build (
    mkdir build
)
cd build
%CMAKE_EXE% -G "MSYS Makefiles" -D CMAKE_BUILD_TYPE=Release -D BUILD_SHARED_LIBS=ON -D CMAKE_C_COMPILER=gcc ../
:: %CMAKE_EXE% -G "MSYS Makefiles" -D CMAKE_BUILD_TYPE=Debug -D BUILD_SHARED_LIBS=ON -D CMAKE_C_COMPILER=gcc ../
make
copy imgui.dll ..\..\lib
popd
