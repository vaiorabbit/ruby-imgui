mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D BUILD_SHARED_LIBS=ON -D CMAKE_C_COMPILER=clang ../
make
arch=`uname -m`
mv imgui.so imgui.${arch}.so
cp *.so ../../lib
