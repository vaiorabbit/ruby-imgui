@echo off
pushd ..\third_party\
set PYTHON_EXE=%1
if "%PYTHON_EXE%"=="" (
    set PYTHON_EXE=python
)
%PYTHON_EXE% dear_bindings\dear_bindings.py -t .\dear_bindings\src\templates -o ..\generator\dearbindings ..\imgui_dll\cimgui\imgui\imgui.h
del ..\generator\dearbindings.cpp
del ..\generator\dearbindings.h
popd
