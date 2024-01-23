cmake_minimum_required(VERSION 3.20.0)

# 函数内可以使用return；宏中不建议使用return

message("########## BEGIN_TEST_MACRO_VS_FUNCTION")

# 定义函数
function(test_func_argument age)
  list(LENGTH ARGV argv_len)
  message(STATUS "length of ARGV: ${argv_len}")
  if (argv_len GREATER 3)
    foreach(loop_var IN LISTS ARGV)
      message(STATUS "loop_var: ${loop_var}")
    endforeach()
  else()
    message(STATUS "loop_var: ${ARGV}, return")
    return()
  endif()
    message(STATUS "after return")
endfunction()

# 定义宏
macro(test_macro_argument age)
  # 定义一个变量
  set(list_var ${ARGV})
  list(LENGTH list_var argv_len)
  message(STATUS "length of ARGV: ${argv_len}")
  if (argv_len GREATER 3)
    foreach(loop_var IN LISTS list_var)
      message(STATUS "loop_var: ${loop_var}")
    endforeach()
  else()
    message(STATUS "argv_len: ${argv_len}, return")
    return()
  endif()
    message(STATUS "after return") 
endmacro()

test_func_argument(22 44 66 88 100)
message("\n")

test_func_argument(10 11 12)
message("\n")

test_macro_argument(11 33 55 77 99)
message("\n")
message(STATUS "after exec macro with 5 values to continue\n")

test_macro_argument(20 21 22)
message("\n")
message(STATUS "after exec macro with 3 values to continue\n")

message("########## END_TEST_MACRO_VS_FUNCTION")