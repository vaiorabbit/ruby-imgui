@echo off
pushd ..\third_party\dear_bindings
set PYTHON_EXE=%1
if "%PYTHON_EXE%"=="" (
    set PYTHON_EXE=python
)

set IMGUI_PATH=..\imgui
set OUTPUT_PATH=..\..\source

if not exist %OUTPUT_PATH% (
    mkdir %OUTPUT_PATH%
)

%PYTHON_EXE% -m pip install -r requirements.txt

%PYTHON_EXE% dear_bindings.py -o %OUTPUT_PATH%\dcimgui %IMGUI_PATH%\imgui.h
%PYTHON_EXE% dear_bindings.py -o %OUTPUT_PATH%\dcimgui_internal --include %IMGUI_PATH%\imgui.h %IMGUI_PATH%\imgui_internal.h

for %%n in (
    imconfig.h
    imgui.cpp
    imgui_demo.cpp
    imgui_draw.cpp
    imgui.h
    imgui_internal.h
    imgui_tables.cpp
    imgui_widgets.cpp
    imstb_rectpack.h
    imstb_textedit.h
    imstb_truetype.h
) do (
    xcopy /Y %IMGUI_PATH%\%%n %OUTPUT_PATH%
)

popd
