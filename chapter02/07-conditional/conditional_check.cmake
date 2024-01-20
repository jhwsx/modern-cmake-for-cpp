cmake_minimum_required(VERSION 3.20.0)

message("Existence Checks")

if (COMMAND list)
  message(STATUS "list is a command")
endif()

# 判断是否定义变量
set(VAR_NAME myname)
set(VAR_CACHE "cahe variable" CACHE STRING "定义缓存变量")
set(ENV{CXX} "clang++")
if (DEFINED VAR_NAME)
  message(STATUS "VAR_NAME defined")
endif()
if (DEFINED CACHE{VAR_CACHE})
  message(STATUS "VAR_CACHE defined")
endif()
if (DEFINED ENV{CXX})
  message(STATUS "CXX defined")
endif()

set(my_list a b c d)
set(first a)
if (a IN_LIST my_list)
  message(STATUS "a is contained in my_list")
endif()
if (first IN_LIST my_list)
  message(STATUS "first is contained in my_list")
endif()

message("File Operations")

if (EXISTS "/etc")
  message(STATUS "/etc dir exists")
endif()

if (EXISTS "/etc/issue")
  message(STATUS "/etc/issue file exists")
endif()

set(ETC_SERVICES "/etc/services")
if (ETC_ISSUE IS_NEWER_THAN ETC_SERVICES)
  message(STATUS "${ETC_ISSUE} is newer than ${ETC_SERVICES}")
else()
  message(STATUS "${ETC_ISSUE} isn't newer than ${ETC_SERVICES}")
endif()

if (IS_DIRECTORY "/etc")
  message(STATUS "/etc is a dir")
endif()

if (IS_ABSOLUTE "/etc/issue")
  message(STATUS "/etc/issue is an absolute path")
endif()

if (IS_ABSOLUTE "/etc")
  message(STATUS "/etc is an absolute path")
endif()
