cmake_minimum_required(VERSION 4.0)
project(imgui)

set (CMAKE_CXX_STANDARD 11)

set(IMGUI_ROOT ${CMAKE_CURRENT_LIST_DIR}/../third_party/imgui)
set(DEARBINDINGS_ROOT ${CMAKE_CURRENT_LIST_DIR}/../third_party/dear_bindings)

include_directories( ${IMGUI_ROOT} )
include_directories( ${DEARBINDINGS_ROOT} )
include_directories( ${DEARBINDINGS_ROOT}/generated )
include_directories( ${CMAKE_CURRENT_LIST_DIR} )

add_definitions("-DIMGUI_DISABLE_OBSOLETE_FUNCTIONS=1")

set(IMGUI_SOURCES
    ${DEARBINDINGS_ROOT}/generated/dcimgui.cpp
    ${DEARBINDINGS_ROOT}/generated/dcimgui_internal.cpp
    ${IMGUI_ROOT}/imgui.cpp
    ${IMGUI_ROOT}/imgui_draw.cpp
    ${IMGUI_ROOT}/imgui_demo.cpp
    ${IMGUI_ROOT}/imgui_tables.cpp
    ${IMGUI_ROOT}/imgui_widgets.cpp
    )

set(IMGUI_LIBRARIES )

# For " Policy CMP0042 is not set: MACOSX_RPATH is enabled by default."
if (APPLE)
    set(CMAKE_MACOSX_RPATH ON)
endif (APPLE)


set(IMGUI_STATIC "no" CACHE STRING "Build as a static library")

#add library and link
if (IMGUI_STATIC)
    add_library(imgui STATIC ${IMGUI_SOURCES})
else (IMGUI_STATIC)
    add_library(imgui SHARED ${IMGUI_SOURCES})
    if (WIN32)
	    target_link_libraries(imgui imm32)
		# Export all original ImGui symbols to support other libraries (e.g. ImNodes)
		# Note that these settings below didn't work as I expeced on Windows/MSys2 environment.
		#  set(WINDOWS_EXPORT_ALL_SYMBOLS ON)
		#  set(CMAKE_SUPPORT_WINDOWS_EXPORT_ALL_SYMBOLS 1)
		# So I add linker option 'export-all-symbols' explicitly.
		set (CMAKE_SHARED_LINKER_FLAGS "-Wl,--export-all-symbols")
    endif(WIN32)
endif (IMGUI_STATIC)

set_target_properties(imgui PROPERTIES PREFIX "")

if (APPLE)
    set_target_properties(imgui PROPERTIES
        XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY ""
	)
endif (APPLE)


#install
install(TARGETS imgui
              RUNTIME DESTINATION  .
              LIBRARY DESTINATION  .
              ARCHIVE DESTINATION  .
              )
