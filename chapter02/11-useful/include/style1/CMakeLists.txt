cmake_minimum_required(VERSION 3.20.0)

project(include_style1)

#方式一:直接包含路径及.cmake文件
include(${CMAKE_CURRENT_SOURCE_DIR}/../cmake/test.cmake)

print_string("cmake test")