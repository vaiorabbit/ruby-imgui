mkdir -p build
cd build

export ARCH=aarch64

cmake -D CMAKE_VERBOSE_MAKEFILE:BOOL=ON -D CMAKE_CXX_FLAGS=-isystem\ /usr/aarch64-linux-gnu/include -D CMAKE_BUILD_TYPE=Release -D CMAKE_CXX_COMPILER_TARGET=aarch64-linux-gnu -D CMAKE_SYSTEM_PROCESSOR=ARM -D BUILD_SHARED_LIBS=ON -D CROSS_BUILD_PLATFORM=${ARCH} -D CMAKE_CXX_COMPILER=aarch64-linux-gnu-g++ ../
make

cp imnodes.so ../../lib/imnodes.${ARCH}.so
