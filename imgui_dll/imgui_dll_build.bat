::
:: For Windows + RubyInstaller2 with DevKit(MSYS2 gcc & make) + CMake users.
:: - Use this script after "ridk enable"d. See https://github.com/oneclick/rubyinstaller2/wiki/The-ridk-tool for details.
::
pushd %~dp0
mkdir build
cd build
"%PROGRAMFILES%"\CMake\bin\cmake -G "MSYS Makefiles" -D CMAKE_BUILD_TYPE=Release -D BUILD_SHARED_LIBS=ON -D CMAKE_C_COMPILER=gcc ../
make
copy imgui.dll ..\..
popd
