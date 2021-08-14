# For macOS + Xcode + CMake users.
curl -O https://www.libsdl.org/release/SDL2-2.0.16.zip
unzip SDL2-2.0.16.zip
cd SDL2-2.0.16/
mkdir build
cd build
export MACOSX_DEPLOYMENT_TARGET=10.14
cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_OSX_ARCHITECTURES="x86_64;arm64" -D BUILD_SHARED_LIBS=ON -D CMAKE_C_COMPILER=clang ../
make

ln -s libSDL2-2.0.dylib libSDL2.dylib
cp -R libSDL2*.dylib ../../../sample
