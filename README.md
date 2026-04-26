<!-- -*- mode:markdown; coding:utf-8; -*- -->

# Yet another ImGui wrapper for Ruby #

*   Created : 2019-01-05
*   Last modified : 2026-04-26

<img src="https://raw.githubusercontent.com/vaiorabbit/ruby-imgui/master/doc/jpfont_test.png" width="250">

## Prerequisites ##

*   Ruby interpreter
    *   Tested on:
        *   [Windows] https://rubyinstaller.org/downloads/ Ruby+Devkit
            *   ruby 4.0.2 (2026-03-17 revision d3da9fec82) +PRISM [x64-mingw-ucrt]

*   Ruby Gems
    *   opengl-bindings2
        *   gem install opengl-bindings2
    *   sdl3-bindings
        *   gem install sdl3-bindings
    *   ffi
        *   gem install ffi
*   Compiler
    *   Tested on:
        *   [Windows] gcc (Rev13, Built by MSYS2 project) 15.2.0
*   CMake https://cmake.org/download/

<details>
<summary>Older versions</summary>

*   Ruby interpreter
    *   Tested on:
        *   [Windows] https://rubyinstaller.org/downloads/ Ruby+Devkit
            *   ruby 3.4.1 (2024-12-25 revision 48d4efcb85) +PRISM [x64-mingw-ucrt]
            *   ruby 3.2.0 (2022-12-25 revision a528908271) [x64-mingw-ucrt]
            *   ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x64-mingw-ucrt]
            *   ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x64-mingw32]
            *   ruby 3.0.0p0 (2020-12-25 revision 95aff21468) [x64-mingw32]
            *   ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x64-mingw32]
        *   [macOS]
            *   ruby 3.3.3 (2024-06-12 revision f1c7b6f435) [arm64-darwin23]
            *   ruby 3.3.0 (2023-12-25 revision 5124f9ac75) [arm64-darwin23]
            *   ruby 3.2.1 (2023-02-08 revision 31819e82c8) [arm64-darwin22]
            *   ruby 3.2.0 (2022-12-25 revision a528908271) [arm64-darwin21]
            *   ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [arm64-darwin21]
            *   ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [arm64-darwin21]
            *   ruby 3.1.0p0 (2021-12-25 revision fb4df44d16) [arm64-darwin20]
            *   ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [arm64-darwin20]
            *   ruby 3.0.1p64 (2021-04-05 revision 0fb782ee38) [arm64-darwin20]
            *   ruby 3.0.0p0 (2020-12-25 revision 95aff21468) [arm64-darwin20]
            *   ruby 2.7.0p0 (2019-12-25 revision 647ee6f091) [x86_64-darwin19]
            *   ruby 2.6.0p0 (2018-12-25 revision 66547) [x86_64-darwin18]
        *   [Linux]
            *   ruby 3.2.0 (2022-12-25 revision a528908271) [aarch64-linux]

*   Compiler
    *   Tested on:
        *   [Windows] gcc (Rev2, Built by MSYS2 project) 14.2.0
        *   [Windows] gcc (Rev7, Built by MSYS2 project) 12.2.0
        *   [Windows] gcc (Rev10, Built by MSYS2 project) 11.2.0
        *   [Windows] gcc (Rev1, Built by MSYS2 project) 8.2.1 20181214
        *   [macOS] Apple clang version 15.0.0 (clang-1500.3.9.4)
        *   [macOS] Apple clang version 14.0.0 (clang-1400.0.29.202), Target: arm64-apple-darwin22.2.0
        *   [macOS] clang (Apple clang version 13.1.6 (clang-1316.0.21.2.5), Target: arm64-apple-darwin21.5.0)
        *   [macOS] clang (Apple clang version 12.0.5 (clang-1205.0.22.11), Target: arm64-apple-darwin20.6.0)
        *   [Linux] gcc (Debian 10.2.1-6) 10.2.1 20210110
</details>

## Setting up and run sample ##

1.  Install pre-built binaries
    *   $ gem install imgui-bindings
2.  Get SDL3
    *   put dylib/dll/so into examples/
3.  Run test.rb
    *   cd example/
    *   ruby test_docking_sdl3_opengl3.rb

## Building binaries ##

*   Use dll/build_imgui_windows.cmd, etc.

## License ##

All shared libraries found in `lib` directory are built on top of these products and are available under the terms of the MIT License.
*   Dear ImGui ( https://github.com/ocornut/imgui )
    *   https://github.com/ocornut/imgui/blob/master/LICENSE.txt
*   Dear Bindings ( https://github.com/dearimgui/dear_bindings )
    *   https://github.com/dearimgui/dear_bindings/blob/main/LICENSE.txt

All ruby codes here are available under the terms of the zlib/libpng License ( http://opensource.org/licenses/Zlib ).

```
Ruby-Imgui : Yet another ImGui wrapper for Ruby
Copyright (c) 2019-2026 vaiorabbit <http://twitter.com/vaiorabbit>

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
