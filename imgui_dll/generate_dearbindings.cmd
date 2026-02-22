@echo off
::
:: generate_dearbindings.cmd
::
:: Regenerates dearbindings.h, dearbindings.cpp, dearbindings_internal.h,
:: dearbindings_internal.cpp, and third_party/dear_bindings/cimgui.json
:: from the imgui headers in third_party/imgui/.
::
:: Prerequisites:
::   pip install ply==3.11
::
:: Usage (from repository root):
::   imgui_dll\generate_dearbindings.cmd

setlocal

set SCRIPT_DIR=%~dp0
set REPO_ROOT=%SCRIPT_DIR%..

set IMGUI_PATH=%REPO_ROOT%third_party\imgui
set DB_PY=%REPO_ROOT%third_party\dear_bindings\dear_bindings.py

echo =^> Generating C wrapper (dearbindings.h / dearbindings.cpp)
python "%DB_PY%" -o "%SCRIPT_DIR%dearbindings" "%IMGUI_PATH%\imgui.h"
if errorlevel 1 ( echo ERROR: dear_bindings.py failed & exit /b 1 )

echo =^> Generating internal C wrapper (dearbindings_internal.h / dearbindings_internal.cpp)
python "%DB_PY%" --include "%IMGUI_PATH%\imgui.h" -o "%SCRIPT_DIR%dearbindings_internal" "%IMGUI_PATH%\imgui_internal.h"
if errorlevel 1 ( echo ERROR: dear_bindings.py (internal) failed & exit /b 1 )

echo =^> Generating JSON for Ruby generator (third_party/dear_bindings/cimgui.json)
python "%DB_PY%" -o "%REPO_ROOT%third_party\dear_bindings\cimgui" "%IMGUI_PATH%\imgui.h"
if errorlevel 1 ( echo ERROR: dear_bindings.py JSON generation failed & exit /b 1 )

echo =^> Done. Generated files:
echo     imgui_dll\dearbindings.h
echo     imgui_dll\dearbindings.cpp
echo     imgui_dll\dearbindings_internal.h
echo     imgui_dll\dearbindings_internal.cpp
echo     third_party\dear_bindings\cimgui.json

endlocal
