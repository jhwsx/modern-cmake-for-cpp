cmake_minimum_required(VERSION 3.20.0)

# 设置工程名称
set(PROJECT_NAME CacheDefinition)

# 设置工程版本号
set(PROJECT_VERSION "1.0.0.10" CACHE STRING "默认版本号")

# 工程定义
project(${PROJECT_NAME} LANGUAGES CXX C VERSION ${PROJECT_VERSION})

# 打印开始日志
message(STATUS "\n########## BEGIN_TEST_CACHE_VARIABLE")

### 定义缓存变量

# 定义一个 STRING 类型的缓存变量（不加 FORCE 选项）
set(MY_GLOBAL_VAR_STRING_NOFORCE "abcdef" CACHE STRING "定义一个不加 FORCE 的 STRING 缓存变量")
message("MY_GLOBAL_VAR_STRING_NOFORCE: ${MY_GLOBAL_VAR_STRING_NOFORCE}")

# 定义一个 STRING 类型的缓存变量（加 FORCE 选项）
set(MY_GLOBAL_VAR_STRING_FORCE "abc" CACHE STRING "定义一个加 FORCE 的 STRING 缓存变量")
message("MY_GLOBAL_VAR_STRING_FORCE: ${MY_GLOBAL_VAR_STRING_FORCE}")

# 定义一个 INTERNAL 类型的缓存变量
set(MY_GLOBAL_VAR_INTERNAL "aaabbb" CACHE INTERNAL "定义一个 INTERNAL 类型的缓存变量")
message("MY_GLOBAL_VAR_INTERNAL: ${MY_GLOBAL_VAR_INTERNAL}")

# 定义一个 BOOL 类型的缓存变量
set(MY_GLOBAL_VAR_BOOL OFF CACHE BOOL "定义一个 BOOL 类型的缓存变量")
message("MY_GLOBAL_VAR_BOOL: ${MY_GLOBAL_VAR_BOOL}")

# 定义一个 FILEPATH 类型的缓存变量
set(MY_GLOBAL_VAR_FILEPATH "/etc/issues" CACHE FILEPATH "定义一个 FILEPATH 类型的缓存变量")
message("MY_GLOBAL_VAR_FILEPATH: ${MY_GLOBAL_VAR_FILEPATH}")

# 定义一个 PATH 类型的缓存变量
set(MY_GLOBAL_VAR_PATH "/etc" CACHE PATH "定义一个 PATH 类型的缓存变量")
message("MY_GLOBAL_VAR_PATH: ${MY_GLOBAL_VAR_PATH}")

# 定义一个包含 3 个值的缓存变量(验证值列表场景)
set(MY_GLOBAL_VAR_THREES "aaa" "bbb" "ccc" CACHE STRING "定义一个缓存变量（3个值）")
message("MY_GLOBAL_VAR_THREES: ${MY_GLOBAL_VAR_THREES}")

### 修改缓存变量

# 修改定义时不加 FORCE 的缓存变量（不加 FORCE 选项方式修改）
set(MY_GLOBAL_VAR_STRING_NOFORCE "modify_abcdef_without_force" CACHE STRING "修改一个不加 FORCE 的 STRING 缓存变量")
message("MY_GLOBAL_VAR_STRING_NOFORCE: ${MY_GLOBAL_VAR_STRING_NOFORCE}")

# 修改定义时不加 FORCE 的缓存变量（加 FORCE 选项方式修改）
set(MY_GLOBAL_VAR_STRING_NOFORCE "modify_abcdef_with_force" CACHE STRING "修改一个不加 FORCE 的 STRING 缓存变量" FORCE)
message("MY_GLOBAL_VAR_STRING_NOFORCE: ${MY_GLOBAL_VAR_STRING_NOFORCE}")

# 修改定义时加 FORCE 的 STRING 类型缓存变量（不加 FORCE 选项方式修改）
set(MY_GLOBAL_VAR_STRING_FORCE "modify_abc_without_force" CACHE STRING "修改 STRING 缓存变量")
message("MY_GLOBAL_VAR_STRING_FORCE: ${MY_GLOBAL_VAR_STRING_FORCE}")

# 修改定义时加 FORCE 的 STRING 类型缓存变量（加 FORCE 选项方式修改）
set(MY_GLOBAL_VAR_STRING_FORCE "modify_abc_with_force" CACHE STRING "修改 STRING 缓存变量" FORCE)
message("MY_GLOBAL_VAR_STRING_FORCE: ${MY_GLOBAL_VAR_STRING_FORCE}")

# 打印结束日志
message(STATUS "\n########## END_TEST_CACHE_VARIABLE")

