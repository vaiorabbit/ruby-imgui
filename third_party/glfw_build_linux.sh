#
# For Linux + CMake users.
#
# Ref.: https://github.com/malkia/ufo/blob/master/build/OSX/glfw.sh
#
git clone --depth=1 https://github.com/glfw/glfw.git glfw
cd glfw/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D GLFW_NATIVE_API=1 -D BUILD_SHARED_LIBS=ON -D CMAKE_C_COMPILER=clang ../
make
cp -R src/libglfw* ../../../sample
