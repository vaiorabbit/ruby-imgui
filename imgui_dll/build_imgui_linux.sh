mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D BUILD_SHARED_LIBS=ON -D CMAKE_CXX_COMPILER=clang++ ../
make
arch=`uname -m`
cp imgui.so ../../lib/imgui.${arch}.so
