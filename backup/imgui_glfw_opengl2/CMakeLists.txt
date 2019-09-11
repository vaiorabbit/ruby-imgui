Project(imgui_glfw_opengl2)
cmake_minimum_required(VERSION 2.8)

find_package(OpenGL REQUIRED)

include_directories( ${OPENGL_INCLUDE_DIR} )
include_directories( ${CMAKE_CURRENT_LIST_DIR}/../cimgui )
include_directories( ${CMAKE_CURRENT_LIST_DIR}/../cimgui/imgui )
include_directories( ${CMAKE_CURRENT_LIST_DIR}/../cimgui/imgui/examples )
include_directories( ${CMAKE_CURRENT_LIST_DIR}/../glfw/include )
include_directories(.)

link_directories(${CMAKE_CURRENT_LIST_DIR}/../glfw/build/src) # path to libglfw.dylib

add_definitions("-DIMGUI_DISABLE_OBSOLETE_FUNCTIONS=1")
add_definitions("-DIMGUI_IMPL_OPENGL_LOADER_CUSTOM=\"<OpenGL/glext.h>\"")

set(IMGUI_IMPL_GLFW_SOURCES
    ${CMAKE_CURRENT_LIST_DIR}/../cimgui/cimgui.cpp
	${CMAKE_CURRENT_LIST_DIR}/../cimgui/imgui/imgui.cpp
	${CMAKE_CURRENT_LIST_DIR}/../cimgui/imgui/imgui_draw.cpp
	${CMAKE_CURRENT_LIST_DIR}/../cimgui/imgui/imgui_demo.cpp
	${CMAKE_CURRENT_LIST_DIR}/../cimgui/imgui/imgui_widgets.cpp
    ${CMAKE_CURRENT_LIST_DIR}/../cimgui/imgui/examples/imgui_impl_glfw.cpp
    ${CMAKE_CURRENT_LIST_DIR}/../cimgui/imgui/examples/imgui_impl_opengl2.cpp
	)

set(IMGUI_IMPL_GLFW_LIBRARIES )

# For " Policy CMP0042 is not set: MACOSX_RPATH is enabled by default."
if (APPLE)
    set(CMAKE_MACOSX_RPATH ON)
endif (APPLE)

if (WIN32)
    add_definitions("-DIMGUI_IMPL_API=extern \"C\" __declspec\(dllexport\)")
else(WIN32)
    add_definitions("-DIMGUI_IMPL_API=extern \"C\" ")
endif(WIN32)

set(IMGUI_STATIC "no" CACHE STRING "Build as a static library")

#add library and link
if (IMGUI_STATIC)
    add_library(imgui_glfw_opengl2 STATIC ${IMGUI_IMPL_GLFW_SOURCES})
else (IMGUI_STATIC)
    add_library(imgui_glfw_opengl2 SHARED ${IMGUI_IMPL_GLFW_SOURCES})
endif (IMGUI_STATIC)

if (WIN32)
    target_link_libraries(imgui_glfw_opengl2 ${IMGUI_IMPL_GLFW_LIBRARIES}  ${OPENGL_LIBRARIES} glfw3dll)
else(WIN32)
    target_link_libraries(imgui_glfw_opengl2 ${IMGUI_IMPL_GLFW_LIBRARIES}  ${OPENGL_LIBRARIES} glfw)
endif(WIN32)
if (APPLE)
    target_link_libraries(imgui_glfw_opengl2 ${IMGUI_IMPL_GLFW_LIBRARIES}  "-framework Foundation" "-framework ApplicationServices")
endif (APPLE)

set_target_properties(imgui_glfw_opengl2 PROPERTIES PREFIX "")

#install
install(TARGETS imgui_glfw_opengl2
              RUNTIME DESTINATION  .
              LIBRARY DESTINATION  .
              ARCHIVE DESTINATION  .
              )
