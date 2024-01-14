cmake_minimum_required(VERSION 3.20.0)

if (1 LESS 2)
  message("1 < 2 is correct")
endif()

if (20 EQUAL "20 GB")
  message("correct")
else()
  message("wrong")
endif()

if (1.3.4 VERSION_LESS_EQUAL 1.4)
  message("correct")
endif()

set(B A)
if ("A" STREQUAL "${B}")
  message("correct")
endif()