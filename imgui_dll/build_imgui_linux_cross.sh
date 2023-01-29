mkdir -p build
cd build
cmake -D CMAKE_VERBOSE_MAKEFILE:BOOL=ON -D CMAKE_C_FLAGS=-isystem\ /usr/aarch64-linux-gnu/include -D CMAKE_BUILD_TYPE=Release -D CMAKE_C_COMPILER_TARGET=aarch64-linux-gnu -D CMAKE_SYSTEM_PROCESSOR=ARM -D BUILD_SHARED_LIBS=ON -D CMAKE_C_COMPILER=clang ../
make
export ARCH=aarch64
mv imgui.so imgui.${ARCH}.so
cp *.so ../../lib
