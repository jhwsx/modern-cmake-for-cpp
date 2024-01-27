cmake_minimum_required(VERSION 3.20.0)

project(include_style2)

# 方式二：先设置 CMAKE_MODULE_PATH 变量, 这个变量是定义 .cmake 文件的搜索目录
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/../cmake/)
include(test) # 不要写成 test.cmake

print_string("cmake test")