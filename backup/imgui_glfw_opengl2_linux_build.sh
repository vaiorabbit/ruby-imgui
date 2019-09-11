#
# For Linux + CMake users.
#
cd imgui_glfw_opengl2
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D BUILD_SHARED_LIBS=ON -D CMAKE_C_COMPILER=clang ../
make
