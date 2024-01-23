cmake_minimum_required(VERSION 3.20.0)

# 函数会产生新作用域；宏是把执行代码替换到调用位置

message("########## BEGIN_TEST_MACRO_VS_FUNCTION")

# 定义函数
function(test_func_argument age)
  # 打印 ARGN 参数值
  message(STATUS "ARGN: ${ARGN}")
  # 打印 ARGC 参数值
  message(STATUS "ARGC: ${ARGC}")
  # 打印 ARGV 参数值
  message(STATUS "ARGV: ${ARGV}")
  # 打印 ARGV0 参数值
  message(STATUS "ARGV0: ${ARGV0}")

  # 打印参数个数
  list(LENGTH ARGV argv_len)
  message(STATUS "length of ARGV: ${argv_len}")

  # 遍历打印各参数
  math(EXPR stop "${argv_len} - 1")
  message(STATUS "stop: ${stop}")
  foreach(i RANGE ${stop})
    list(GET ARGV ${i} argv_value)
    message(STATUS "argv${i}: ${argv_value}")
  endforeach()
  if(ARGV1)
    message(STATUS "ARGV1: ${ARGV1}")
  else()
    message(STATUS "ARGV1: not defined")
  endif()

  if(DEFINED ARGV2)
    message(STATUS "ARGV2: ${ARGV2}")
  else()
    message(STATUS "ARGV2: not defined")
  endif()

  if(ARGC GREATER 2)
    message(STATUS "ARGC: ${ARGC}")
  else()
    message(STATUS "ARGC: not defined")
  endif()

  # 遍历 ARGN 中的变量
  if(ARGN)
    foreach (val IN LISTS ARGN)
      message(STATUS "val: ${val}")
    endforeach()
  else()
    message(STATUS "ARGN: not defined")
  endif()
endfunction()

# 定义宏
macro(test_macro_argument age)
  # 打印 ARGN 参数值
  message(STATUS "ARGN: ${ARGN}")
  # 打印 ARGC 参数值
  message(STATUS "ARGC: ${ARGC}")
  # 打印 ARGV 参数值
  message(STATUS "ARGV: ${ARGV}")
  # 打印 ARGV0 参数值
  message(STATUS "ARGV0: ${ARGV0}")

  # 打印参数个数
  list(LENGTH ARGV argv_len)
  message(STATUS "length of ARGV: ${argv_len}")

  # 遍历打印各参数值
  math(EXPR stop "${argv_len} - 1")
  message(STATUS "stop: ${stop}")
  foreach(i RANGE ${stop})
    list(GET ARGV ${i} argv_value)
    message(STATUS "argv${i}: ${argv_value}")
  endforeach()

  if (ARGV1)
    message(STATUS "ARGV1: ${ARGV1}")
  else()
    message(STATUS "ARGV1: not defined")
  endif()

  if (DEFINED ARGV2)
    message(STATUS "ARGV2: ${ARGV2}")
  else()
    message(STATUS "ARGV2: not defined")
  endif()

  if (ARGC GREATER 2)
    message(STATUS "ARGC: ${ARGC}")
  else()
    message(STATUS "ARGC: not defined")
  endif()

  # 遍历 ARGN 中的变量
  if (ARGN)
    foreach (val IN LISTS ARGN)
      message(STATUS "val: ${val}")
    endforeach()
  else()
    message(STATUS "ARGN: not defined")
  endif() 
endmacro()

test_func_argument(22 33 44)
message(STATUS "\n")
test_macro_argument(22 33 44)

message("########## END_TEST_MACRO_VS_FUNCTION")
