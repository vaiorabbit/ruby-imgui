#
# For macOS + Xcode + CMake users.
#
mkdir -p build
cd build
export MACOSX_DEPLOYMENT_TARGET=11.5
#cmake -D CMAKE_C_FLAGS="" CMAKE_BUILD_TYPE=Release -D CMAKE_OSX_ARCHITECTURES="x86_64;arm64" -D BUILD_SHARED_LIBS=ON -D BUILD_EXAMPLES=OFF -D CMAKE_C_COMPILER=clang ..
cmake -D CMAKE_C_FLAGS="" -D CMAKE_BUILD_TYPE=Release -D CMAKE_OSX_ARCHITECTURES="arm64" -D BUILD_SHARED_LIBS=ON -D CMAKE_C_COMPILER=clang ..
make
cp -R imnodes.dylib ../../lib
