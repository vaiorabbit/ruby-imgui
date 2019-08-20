#
# For Linux + CMake users.
#
cd cimgui_impl_dll
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D BUILD_SHARED_LIBS=ON -D CMAKE_C_COMPILER=clang ../
make
