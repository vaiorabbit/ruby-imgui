Project(imgui)
cmake_minimum_required(VERSION 2.8)

include_directories( ${CMAKE_CURRENT_LIST_DIR}/../cimgui )
include_directories( ${CMAKE_CURRENT_LIST_DIR}/../cimgui/imgui )
include_directories( ${CMAKE_CURRENT_LIST_DIR}/../cimgui/imgui/examples )
include_directories(.)

add_definitions("-DIMGUI_DISABLE_OBSOLETE_FUNCTIONS=1")

set(IMGUI_SOURCES
    ${CMAKE_CURRENT_LIST_DIR}/../cimgui/cimgui.cpp
	${CMAKE_CURRENT_LIST_DIR}/../cimgui/imgui/imgui.cpp
	${CMAKE_CURRENT_LIST_DIR}/../cimgui/imgui/imgui_draw.cpp
	${CMAKE_CURRENT_LIST_DIR}/../cimgui/imgui/imgui_demo.cpp
	${CMAKE_CURRENT_LIST_DIR}/../cimgui/imgui/imgui_widgets.cpp
	)

set(IMGUI_LIBRARIES )

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
    add_library(imgui STATIC ${IMGUI_SOURCES})
else (IMGUI_STATIC)
    add_library(imgui SHARED ${IMGUI_SOURCES})
endif (IMGUI_STATIC)

set_target_properties(imgui PROPERTIES PREFIX "")

#install
install(TARGETS imgui
              RUNTIME DESTINATION  .
              LIBRARY DESTINATION  .
              ARCHIVE DESTINATION  .
              )
