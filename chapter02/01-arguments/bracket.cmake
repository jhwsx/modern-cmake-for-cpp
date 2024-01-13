cmake_minimum_required(VERSION 3.20.0)
# 2.2.1 注释
# 单行注释
message("Hi") # print Hi

# 括号（多行）注释
# 括号注释可以嵌套
#[=[
bracket comment
    #[=[
        nested bracket comment
    #]=]
#]=]

# disable bracket comment
##[=[
    message("no longer commented")
    #[=[
        message("still commented")
    #]=]
#]=]

# 2.2.3 指令参数
# 方括号参数
message([[multiline
bracket
argument
]])

message([==[
    because we used two equal-signs "=="
    following is still a single argument:
    { "petsArray" = [["mouse", "cat"], ["dog"]] }       
]==])