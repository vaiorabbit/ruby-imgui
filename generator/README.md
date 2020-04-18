# Using generate_imgui.rb  #

## Update cimgui ##

    $ pwd
    ~/ruby-imgui

    $ cd cimgui
    $ git pull origin master <- get latest cimgui
    $ git submodule update <- get cimgui/imgui

## Generate JSON files ##

Setup luajit first:

    $ brew install luajit

Generate JSON (definitions.json, etc.) files that contain only public definitions:

    $ pwd
    ~/ruby-imgui

    $ cd cimgui/generator
    $ luajit ./generator.lua clang false glfw opengl3 opengl2 sdl

## Run generator ##

    $ pwd
    ~/ruby-imgui

    $ cd generator
    $ ruby generate_imgui.rb
