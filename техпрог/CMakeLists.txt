cmake_minimum_required(VERSION 2.8)

project (hw)

execute_process(COMMAND python A/preparing.py)





add_subdirectory(${CMAKE_CURRENT_LIST_DIR}/B)

include_directories(${CMAKE_CURRENT_LIST_DIR})

add_executable(HW C/main.cpp C/main.h)








