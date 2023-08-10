<!-- -*- mode:markdown; coding:utf-8; -*- -->

# Yet another ImGui wrapper for Ruby #

*   Created : 2019-01-05
*   Last modified : 2023-08-10

<img src="https://raw.githubusercontent.com/vaiorabbit/ruby-imgui/master/doc/jpfont_test.png" width="250">

[Notice] This project is experimental.

## Prerequisites ##

*   Ruby interpreter
    *   Tested on:
        *   [Windows] https://rubyinstaller.org/downloads/ Ruby+Devkit
            *   ruby 3.2.0 (2022-12-25 revision a528908271) [x64-mingw-ucrt]
        *   [macOS]
            *   ruby 3.2.1 (2023-02-08 revision 31819e82c8) [arm64-darwin22]
        *   [Linux]
            *   ruby 3.2.0 (2022-12-25 revision a528908271) [aarch64-linux]
*   Ruby Gems
    *   opengl-bindings2
        *   gem install opengl-bindings2
    *   ffi
        *   gem install ffi
*   Compiler
    *   Tested on:
        *   [Windows] gcc (Rev7, Built by MSYS2 project) 12.2.0
        *   [macOS] Apple clang version 14.0.0 (clang-1400.0.29.202), Target: arm64-apple-darwin22.2.0
        *   [Linux] gcc (Debian 10.2.1-6) 10.2.1 20210110
*   CMake https://cmake.org/download/

<details>
<summary>Older versions</summary>

*   Ruby interpreter
    *   Tested on:
        *   [Windows] https://rubyinstaller.org/downloads/ Ruby+Devkit
            *   ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x64-mingw-ucrt]
            *   ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x64-mingw32]
            *   ruby 3.0.0p0 (2020-12-25 revision 95aff21468) [x64-mingw32]
            *   ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x64-mingw32]
        *   [macOS]
            *   ruby 3.2.0 (2022-12-25 revision a528908271) [arm64-darwin21]
            *   ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [arm64-darwin21]
            *   ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [arm64-darwin21]
            *   ruby 3.1.0p0 (2021-12-25 revision fb4df44d16) [arm64-darwin20]
            *   ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [arm64-darwin20]
            *   ruby 3.0.1p64 (2021-04-05 revision 0fb782ee38) [arm64-darwin20]
            *   ruby 3.0.0p0 (2020-12-25 revision 95aff21468) [arm64-darwin20]
            *   ruby 2.7.0p0 (2019-12-25 revision 647ee6f091) [x86_64-darwin19]
            *   ruby 2.6.0p0 (2018-12-25 revision 66547) [x86_64-darwin18]

*   Compiler
    *   Tested on:
        *   [Windows] gcc (Rev10, Built by MSYS2 project) 11.2.0
        *   [Windows] gcc (Rev1, Built by MSYS2 project) 8.2.1 20181214
        *   [macOS] clang (Apple clang version 13.1.6 (clang-1316.0.21.2.5), Target: arm64-apple-darwin21.5.0)
        *   [macOS] clang (Apple clang version 12.0.5 (clang-1205.0.22.11), Target: arm64-apple-darwin20.6.0)
</details>

## Setting up and run sample ##

1.  Install pre-built binaries
    *   $ gem install imgui-bindings
2.  Get GLFW or SDL2
    *   put dylib/dll/so into sample/
4.  Run test.rb
    *   cd sample/
    *   ruby test_glfw_opengl2.rb (GLFW)
    *   ruby test_sld2_opengl2.rb (SDL2)

## Building binaries ##

1.  Update submodules
    *   git submodule update --recursive --remote
2.  Update cimgui.c and cimgui.h
    *   $ cd imgui_dll/cimgui/generator
    *   $ luajit ./generator.lua clang ""
3.  Build library
    *   Use build_imgui_macos.sh, etc.

## License ##

All shared libraries found in `lib` directory are built on top of these products and are available under the terms of the MIT License.
*   cimgui ( https://github.com/cimgui/cimgui )
    *   https://github.com/cimgui/cimgui/blob/master/LICENSE
*   Dear ImGui ( https://github.com/ocornut/imgui )
    *   https://github.com/ocornut/imgui/blob/master/LICENSE.txt
*   ImNodes ( https://github.com/rokups/ImNodes )
    *   https://github.com/rokups/ImNodes/blob/master/LICENSE

All ruby codes here are available under the terms of the zlib/libpng License ( http://opensource.org/licenses/Zlib ).

```
Ruby-Imgui : Yet another ImGui wrapper for Ruby
Copyright (c) 2019-2023 vaiorabbit <http://twitter.com/vaiorabbit>

This software is provided 'as-is', without any express or implied
warranty. In no event will the authors be held liable for any damages
arising from the use of this software.

Permission is granted to anyone to use this software for any purpose,
including commercial applications, and to alter it and redistribute it
freely, subject to the following restrictions:

    1. The origin of this software must not be misrepresented; you must not
    claim that you wrote the original software. If you use this software
    in a product, an acknowledgment in the product documentation would be
    appreciated but is not required.

    2. Altered source versions must be plainly marked as such, and must not be
    misrepresented as being the original software.

    3. This notice may not be removed or altered from any source
    distribution.
```
