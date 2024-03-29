cmake_minimum_required( VERSION 3.17.1 )
project( ImNodes )

file(GLOB IMNODES_LIB_HDRS "${CMAKE_CURRENT_LIST_DIR}/ImNodes/Im*.h")
file(GLOB IMNODES_LIB_SRCS "${CMAKE_CURRENT_LIST_DIR}/ImNodes/Im*.cpp")
add_library(ImNodes SHARED ${IMNODES_LIB_HDRS} ${IMNODES_LIB_SRCS})
target_sources(ImNodes PUBLIC "${CMAKE_CURRENT_LIST_DIR}/ImNodesCAPI.h")
target_sources(ImNodes PRIVATE "${CMAKE_CURRENT_LIST_DIR}/ImNodesCAPI.cpp")
include_directories( ${CMAKE_CURRENT_LIST_DIR}/../imgui_dll/cimgui/imgui )

if (CMAKE_HOST_WIN32)
    add_library(imgui SHARED IMPORTED)
    set_target_properties(imgui PROPERTIES IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/../imgui_dll/build)
    set_target_properties(imgui PROPERTIES IMPORTED_IMPLIB ${CMAKE_CURRENT_SOURCE_DIR}/../imgui_dll/build/libimgui.dll.a)
    target_link_libraries(ImNodes imgui)
elseif (CMAKE_HOST_APPLE)
    target_link_libraries(ImNodes ${CMAKE_CURRENT_SOURCE_DIR}/../lib/imgui.${CMAKE_OSX_ARCHITECTURES}.dylib)
else()
    add_library(imgui SHARED IMPORTED)
    if (DEFINED CROSS_BUILD_PLATFORM)
        set_target_properties(imgui PROPERTIES IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/../lib/imgui.${CROSS_BUILD_PLATFORM}.so)
        #set_target_properties(imgui PROPERTIES IMPORTED_SONAME ${CMAKE_CURRENT_SOURCE_DIR}/../lib/imgui.${CROSS_BUILD_PLATFORM}.so)
        target_link_libraries(ImNodes imgui)
    else()
        set_target_properties(imgui PROPERTIES IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/../lib/imgui.${CMAKE_HOST_SYSTEM_PROCESSOR}.so)
        #set_target_properties(imgui PROPERTIES IMPORTED_SONAME ${CMAKE_CURRENT_SOURCE_DIR}/../lib/imgui.${CMAKE_HOST_SYSTEM_PROCESSOR}.so)
        target_link_libraries(ImNodes imgui)
    endif()	
endif()

set_target_properties(ImNodes PROPERTIES PREFIX "")
set_target_properties(ImNodes PROPERTIES OUTPUT_NAME "imnodes")

set_target_properties(ImNodes PROPERTIES
    CXX_STANDARD 14
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO
)
