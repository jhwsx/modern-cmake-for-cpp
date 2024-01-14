cmake_minimum_required(VERSION 3.20.0)

if (COMMAND list)
  message("correct")
endif()

if (EXISTS "/etc")
  message("correct")
endif()

if (IS_ABSOLUTE "/etc/issue")
  message("correct")
endif()