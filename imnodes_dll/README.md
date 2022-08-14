<!-- -*- mode:markdown; coding:utf-8; -*- -->

# Building ImNodes DLL #

1.  Build `imgui_dll` first and keep its intermediate directory `build` untouched
2.  Run `build_imnodes_macos.sh` or `build_imnodes_windows.cmd`
    *   On Windows, make sure you have run `ridk enable` to use gcc
3.  You will find `imnodes.dylib` or `imnodes.dll` generated in `lib` directory
