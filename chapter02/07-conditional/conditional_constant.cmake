cmake_minimum_required(VERSION 3.20.0)

message("TRUE constants example:")
if (1)
  message(STATUS "1: TRUE")
endif()

if (ON)
  message(STATUS "ON: TRUE")
endif()

if (YES)
  message(STATUS "YES: TRUE")
endif()


if (TRUE)
  message(STATUS "TRUE: TRUE")
endif()


if (Y)
  message(STATUS "Y: TRUE")
endif()


if (0.5)
  message(STATUS "0.5: TRUE")
endif()

if (100)
  message(STATUS "100: TRUE")
endif()

if (on)
  message(STATUS "on: TRUE")
endif()

message("FALSE constants example:")

if (NOT 0)
  message(STATUS "0: FALSE")
endif()


if (NOT OFF)
  message(STATUS "OFF: FALSE")
endif()


if (NOT NO)
  message(STATUS "NO: FALSE")
endif()


if (NOT FALSE)
  message(STATUS "FALSE: FALSE")
endif()


if (NOT N)
  message(STATUS "N: FALSE")
endif()


if (NOT IGNORE)
  message(STATUS "IGNORE: FALSE")
endif()


if (NOT NOTFOUND)
  message(STATUS "NOTFOUND: FALSE")
endif()


if (NOT "")
  message(STATUS "\"\": FALSE")
endif()


if (NOT MONEY-NOTFOUND)
  message(STATUS "MONEY-NOTFOUND: FALSE")
endif()


if (NOT "HOME-NOTFOUND")
  message(STATUS "\"HOME-NOTFOUND\": FALSE")
endif()

message("named boolean constants example:")

# 命名的 boolean 常量不区分大小写
set(IS_ADULT ON)
if (${IS_ADULT})
  message(STATUS "IS_ADULT: TRUE")
endif()

set(IS_CHILD on)
if (${IS_CHILD})
  message(STATUS "IS_CHILD: TRUE")
endif()