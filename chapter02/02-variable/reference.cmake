cmake_minimum_required(VERSION 3.20.0)

# 创建对已定义变量的引用，需要使用 ${} 语法:message(${MyString1})。

set(MyInner "Greetings")
set(MyOuterGreetings "Hello World")

message("${MyOuter${MyInner}}")

# error
#[=[
set(MyInside "Hello")
set(MyOutside "${My")

message("${MyOutside}Inside} World")
]=]

set(MyVar "Hello")
message("MyVar is ${MyVar}")
set(${MyVar} "Hi") # ${MyVar} 将展开为 Hello, 所以这里是 set(Hello "Hi")
message("MyVar is ${MyVar}")
message("Hello is ${Hello}")


# $ENV{} 用于引用环境变量
message("Path: $ENV{PATH}")

# $CACHE{} 用于引用缓存变量
set(MY_CACHE_VARIABLE "cachevalue" CACHE STRING "my cache variable")
message("MY_CACHE_VARIABLE is ${MY_CACHE_VARIABLE}")
message("MY_CACHE_VARIABLE is $CACHE{MY_CACHE_VARIABLE}")

#[=[
Hello World
MyVar is Hello
MyVar is Hello
Hello is Hi
Path: /home/wangzhichao/.vscode-server/bin/0ee08df0cf4527e40edc9aa28f4b5bd38bbff2b2/bin/remote-cli:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/opt/cmake/bin:/opt/cmake/bin
MY_CACHE_VARIABLE is cachevalue
]=]
