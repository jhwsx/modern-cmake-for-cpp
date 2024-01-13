cmake_minimum_required(VERSION 3.20.0)

#[=[
将在配置期间打印 myenv 环境变量，并通过 add_custom_target() 添加
一个构建阶段，该阶段作为构建过程的一部分响应相同的变量。可以测试 bash 脚本会发生什么，在
配置阶段使用一个值，在构建阶段使用另一个值
]=]

project(Environtment)

message("generated with $ENV{myenv}")
# Add a target with no output so it will always be built
# ALL：表明该目标会被添加到默认的构建目标，使得它每次都被运行
# COMMAND：指定要在构建时执行的命令行
add_custom_target(EchoEnv ALL COMMAND echo "myenv in build is" $ENV{myenv})