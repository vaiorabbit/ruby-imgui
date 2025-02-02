# Using generate_imgui.rb  #

## Update cimgui ##

    $ pwd
    ~/ruby-imgui

    $ cd cimgui
    $ git pull origin master <- get latest cimgui
    $ git submodule update <- get cimgui/imgui

## Generate JSON files ##

Setup luajit first:

    On macOS:
    $ brew install luajit

    On Windows you can obtain LuaJIT via MSYS2 package manager:
    > pacman -S mingw-w64-ucrt-x86_64-luajit

Generate JSON (definitions.json, etc.) files that contain only public definitions:

    $ pwd
    ~/ruby-imgui

    $ cd cimgui/generator
    $ luajit ./generator.lua {clang|gcc} ""

## Run generator ##

    $ pwd
    ~/ruby-imgui

    $ cd generator
    $ ruby generate_imgui.rb
