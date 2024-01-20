cmake_minimum_required(VERSION 3.20.0)

if (NOT "")
  message(STATUS "\"\": FALSE")
endif()

if (NOT "not true constants")
  message(STATUS "\"not true constants\": FALSE")
endif()

if ("1")
  message(STATUS "\"1\": TRUE")
endif()


if ("ON")
  message(STATUS "\"ON\": TRUE")
endif()


if ("YES")
  message(STATUS "\"YES\": TRUE")
endif()


if ("TRUE")
  message(STATUS "\"TRUE\": TRUE")
endif()


if ("Y")
  message(STATUS "\"Y\": TRUE")
endif()


if ("100")
  message(STATUS "\"100\": TRUE")
endif()


if ("0.5")
  message(STATUS "\"0.5\": TRUE")
endif()

if ("on")
  message(STATUS "\"on\": TRUE")
endif()