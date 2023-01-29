#
# For Mac OS X + Xcode + CMake users.
#
mkdir build
cd build
export MACOSX_DEPLOYMENT_TARGET=11.5
# cmake -D CMAKE_BUILD_TYPE=Debug -D CMAKE_OSX_ARCHITECTURES="x86_64;arm64" -D BUILD_SHARED_LIBS=ON -D CMAKE_C_COMPILER=clang ../
cmake -D CMAKE_BUILD_TYPE=Debug -D CMAKE_OSX_ARCHITECTURES="arm64" -D BUILD_SHARED_LIBS=ON -D CMAKE_C_COMPILER=clang ../
make
cp *.dylib ../../lib
