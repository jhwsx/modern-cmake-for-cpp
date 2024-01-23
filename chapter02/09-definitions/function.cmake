cmake_minimum_required(VERSION 3.20.0)

function(MyFunction FirstArg)
  # 打印当前函数的名称
  message("Function: ${CMAKE_CURRENT_FUNCTION}")
  # 打印当前函数所属文件的目录
  message("Dir: ${CMAKE_CURRENT_FUNCTION_LIST_DIR}")
  # 打印当前函数所属文件
  message("File: ${CMAKE_CURRENT_FUNCTION_LIST_FILE}")
  # 打印当前函数定义的起始行数
  message("Line: ${CMAKE_CURRENT_FUNCTION_LIST_LINE}")
  message("FirstArg: ${FirstArg}")
  set(FirstArg "new value")
  message("FirstArg again: ${FirstArg}")
  message("ARGV0: ${ARGV0} ARGV1: ${ARGV1} ARGC: ${ARGC}")
endfunction()

set(FirstArg "first value")
MyFunction("Value1" "Value2")
message("FirstArg in global scope: ${FirstArg}")

#[=[
Output:
Function: MyFunction
Dir: /home/wangzhichao/workspace/cs/modern-cmake-for-cpp/chapter02/09-definitions
File: /home/wangzhichao/workspace/cs/modern-cmake-for-cpp/chapter02/09-definitions/function.cmake
Line: 3
FirstArg: Value1
FirstArg again: new value
ARGV0: Value1 ARGV1: Value2 ARGC: 2
FirstArg in global scope: first valuealue
]=]