cmake_minimum_required(VERSION 3.20.0)

# 设置工程名称
set(PROJECT_NAME CacheApplication)

# 设置工程版本名
set(PROJECT_VERSION "1.0.0.11" CACHE STRING "默认版本号")

# 工程定义
project(${PROJECT_NAME}
    LANGUAGES C CXX
    VERSION ${PROJECT_VERSION})

# 打印开始日志
message(STATUS "\n########## BEGIN_TEST_CACHE_VARIABLE")

# 定义一个 STRING 类型的缓存变量
set(MY_GLOBAL_VAR_STRING "abcdef" CACHE STRING "定义一个 STRING 缓存变量" FORCE)
message("MY_GLOBAL_VAR_STRING_1: ${MY_GLOBAL_VAR_STRING}")

function(test_cache_func)
    # 访问函数外部定义的缓存变量
    message("MY_GLOBAL_VAR_STRING_2: ${MY_GLOBAL_VAR_STRING}")

    # 修改函数外定义的缓存变量
    set(MY_GLOBAL_VAR_STRING "abcdef modified by func" CACHE STRING "修改缓存变量" FORCE)
    
    # 访问修改后的缓存变量
    message("MY_GLOBAL_VAR_STRING_3: ${MY_GLOBAL_VAR_STRING}")

    # 在函数中新定义一个 STRING 类型的缓存变量
    set(MY_GLOBAL_VAR_STRING_FUNC "I am a func inner cache variable" CACHE STRING "定义一个 STRING 缓存变量" FORCE)
    message("MY_GLOVAL_VAR_STRING_FUNC_1: ${MY_GLOBAL_VAR_STRING_FUNC}")
endfunction()

message(STATUS "\n##### BEGIN_TEST_FUNC_CACHE_VARIABLE")

# 调用函数
test_cache_func()

# 访问缓存变量的值
message("MY_GLOBAL_VAR_STRING_4: ${MY_GLOBAL_VAR_STRING}")
message("MY_GLOVAL_VAR_STRING_FUNC_2: ${MY_GLOBAL_VAR_STRING_FUNC}")

message(STATUS "##### END_TEST_FUNC_CACHE_VARIABLE")

macro(test_cache_macro)
    # 访问宏外定义的缓存变量
    message("MY_GLOBAL_VAR_STRING_5: ${MY_GLOBAL_VAR_STRING}")

    # 修改函数外定义的缓存变量
    set(MY_GLOBAL_VAR_STRING "abcdef modified by macro" CACHE STRING "修改缓存变量" FORCE)

    # 访问修改后的宏外定义的缓存变量
    message("MY_GLOBAL_VAR_STRING_6: ${MY_GLOBAL_VAR_STRING}")

    # 在宏中新定义一个 STRING 类型的缓存变量
    set(MY_GLOBAL_VAR_STRING_MACRO "I am a macro inner cache variable" CACHE STRING "定义一个 STRING 缓存变量" FORCE)
    message("MY_GLOVAL_VAR_STRING_MACRO_1: ${MY_GLOBAL_VAR_STRING_MACRO}")
endmacro()

message(STATUS "\n##### BEGIN_TEST_MACRO_CACHE_VAR")

# 调用宏
test_cache_macro()

# 访问缓存变量的值
message("MY_GLOBAL_VAR_STRING_7: ${MY_GLOBAL_VAR_STRING}")
message("MY_GLOVAL_VAR_STRING_MACRO_2: ${MY_GLOBAL_VAR_STRING_MACRO}")

message(STATUS "##### END_TEST_MACRO_CACHE_VAR")

message(STATUS "\n##### BEGIN_TEST_SUBDIR_CACHE_VAR")

add_subdirectory(src)

# 访问缓存变量的值
message("MY_GLOBAL_VAR_STRING_10: ${MY_GLOBAL_VAR_STRING}")
message("MY_GLOBAL_VAR_STRING_SUBDIR_2: ${MY_GLOBAL_VAR_STRING_SUBDIR}")

message(STATUS "##### END_TEST_SUBDIR_CACHE_VAR")

message(STATUS "\n##### BEGIN_TEST_INCLUDE_CACHE_VAR")

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
include(test_include_cache)

# 访问缓存变量的值
message("MY_GLOBAL_VAR_STRING_13: ${MY_GLOBAL_VAR_STRING}")
message("MY_GLOBAL_VAR_INCLUDE_2: ${MY_GLOBAL_VAR_STRING_INCLUDE}")

message(STATUS "##### END_TEST_INCLUDE_CACHE_DIR")

# 打印结束日志
message(STATUS "########## END_TEST_CACHE_VARIABLE")
