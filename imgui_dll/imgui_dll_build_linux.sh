#
# For Mac OS X + Xcode + CMake users.
#
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D -D BUILD_SHARED_LIBS=ON -D CMAKE_C_COMPILER=clang ../
make
cp *.so ../..
