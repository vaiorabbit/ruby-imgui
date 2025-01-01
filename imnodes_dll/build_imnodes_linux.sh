mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D BUILD_SHARED_LIBS=ON -D CMAKE_CXX_COMPILER=clang++ ../
cmake --build .
arch=`uname -m`
cp imnodes.so ../../lib/imnodes.${arch}.so
