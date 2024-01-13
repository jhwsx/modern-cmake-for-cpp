cmake_minimum_required(VERSION 3.20.0)
# 2.2.3 指令参数
# 非引号参数
# 不加引号的实参会计算转义序列和变量引用
message(a\ single\ argument) # 会转义空格
# message() 不会添加任何空格，所以两个参数和三个单独的参数会粘在一起
message(two arguments)
message(three;separated;arguments)
message(${CMAKE_VERSION})
message(() () ())