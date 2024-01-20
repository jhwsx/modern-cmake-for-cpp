cmake_minimum_required(VERSION 3.24)

message("Comparisons:")
# 比较数值
if (1 LESS 2)
  message(STATUS "1 < 2 is correct")
endif()

if (2 GREATER 1)
  message(STATUS "2 > 1 is correct")
endif()

if (1 EQUAL 1)
  message(STATUS "1 == 1 is correct")
endif()

if (1 LESS_EQUAL 2)
  message(STATUS "1 =< 2 is correct")
endif()

if (2 GREATER_EQUAL 1)
  message(STATUS "2 >= 1 is correct")
endif()

if (20 EQUAL "20 GB")
  message(STATUS "20 equals 20 GB: correct")
endif()

# 对于字典字符串比较，需要在操作符前加上 STR 前缀 ( 注意没有下划线 )
if ("A" STREQUAL "A")
  message(STATUS "\"A\" == \"A\" is correct")
endif()

if ("hi" STRGREATER "hello")
  message(STATUS "\"hi\" > \"hello\" is correct")
endif()

if ("hello" STRLESS "hi")
  message(STATUS "\"hello\" > \"hi\" is correct")
endif()

if ("hi" STRGREATER_EQUAL "hello")
  message(STATUS "\"hi\" > \"hello\" is correct")
endif()

if ("hello" STRLESS_EQUAL "hi")
  message(STATUS "\"hello\" > \"hi\" is correct")
endif()

# 版本比较
message("Version Comparisons:")
# 可以比较 [main.[.minor[.patch]]] 之后的版本，可以在操作符前添加一个 VERSION_ 前缀来调整格式:
if (1.3.4 VERSION_LESS_EQUAL 1.4)
  message(STATUS "v1.3.4 < v1.4 is correct") # matched
endif()

if (1.4 VERSION_GREATER_EQUAL 1.3.4)
  message(STATUS "v1.4 > v1.3.4 is correct") # matched
endif()

message("Path Comparisons:")
if ("/a//b/c" PATH_EQUAL "/a/b/c")
  message(STATUS "/a//b/c == /a/b/c is correct")
endif()