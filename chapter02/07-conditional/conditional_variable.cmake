cmake_minimum_required(VERSION 3.20.0)

# 如果使用引号, cmake 3.1 以后，如果该字符串不匹配任何为真的值，那该条件表达式为假。
set(VAR_NOT_TRUE XXX)
message("VAR_NOT_TRUE: ")
if (${VAR_NON_TRUE})
  message(TRUE)
else()
  message(FALSE) # matched
endif()

# 与带引号的参数不同，FOO 不会通过 BAR, 以生成 if ("BAR") 的语句
# 如果没有使用引号，那该变量的值会和为假的值对比，如果匹配上则为假，否则为真。
set(FOO BAR) 
message("FOO: ")
if (FOO)
  message(TRUE) # matched, 不满足为 false 的条件，所以是 true
else()
  message(FALSE)
endif()

# 若认为不加引号的参数的行为令人困惑，请将变量引用包装在加引号的参数中 :if (”${FOO}”) 。
# 这将导致在提供的参数传递到 if() 指令之前进行参数求值，并且行为将与字符串的求值一致。
if ("${FOO}")
  message(TRUE)
else()
  message(FALSE) # matched
endif()

if (${FOO})
  message(TRUE)
else()
  message(FALSE) # matched
endif()

# 未定义的变量将赋值为 false
message("VAR_UNDEFINED: ")
if (VAR_UNDEFINED)
  message(TRUE)
else()
  message(FALSE) # matched
endif()

# 先定义一个变量会改变这种情况，并且计算为 true
set(VAR_DEFINED "BAR")
message("VAR_DEFINED: ")
if (VAR_DEFINED)
  message(TRUE) # matched
else()
  message(FALSE)
endif()

message("Variable Expansion:")
set(var1 OFF)
set(var2 "var1")
if (NOT ${var2}) # 这里会计算为 if (NOT var1)
  message(STATUS "${var2}: TRUE")
endif()

if (var2)
  message(STATUS "var2: TRUE") # which is true because var2 is defined to var1 which is not a false constant.
endif()