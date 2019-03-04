cmake_minimum_required(VERSION 2.8)

project (HW)

execute_process(COMMAND python A/preparing.py)





add_subdirectory(B)

include_directories(${CMAKE_CURRENT_LIST_DIR})

add_executable(HW C/main.cpp C/main.h)








