cmake_minimum_required(VERSION 3.20.0)

# 在函数中调用宏的精妙

message("########## BEGIN_TEST_MACRO_VS_FUNCTION")

macro(bar)
  if(DEFINED ARGN)
    message("ARGN is defined")
  endif()

  foreach(loop_var IN LISTS ARGN)
    message(STATUS "loop_var: ${loop_var}")
  endforeach()
endmacro()

function(foo)
  # 打印 ARGN 参数值
  message(STATUS "ARGN: ${ARGN}")
  # 打印 ARGC 参数值
  message(STATUS "ARGC: ${ARGC}")
  # 打印 ARGV 参数值
  message(STATUS "ARGV: ${ARGV}")
  # 打印 ARGV0 参数值
  message(STATUS "ARGV0: ${ARGV0}")
  # 调用宏
  bar(x y z)
endfunction()

foo(a b c)
message("########## END_TEST_MACRO_VS_FUNCTION")

#[=[
Output:
########## BEGIN_TEST_MACRO_VS_FUNCTION
-- ARGN: a;b;c
-- ARGC: 3
-- ARGV: a;b;c
-- ARGV0: a
ARGN is defined
-- loop_var: a
-- loop_var: b
-- loop_var: c
########## END_TEST_MACRO_VS_FUNCTION
]=]