cmake_minimum_required(VERSION 3.20.0)

# 宏实现的仅仅是字符串替换，宏定义的过程中是无法进行修改的，而函数却是可以的

set(var "ABC")

macro(Moo arg)
  message("arg = ${arg}")
  set(arg "abc")
  message("# After change the value of arg.")
  message("arg = ${arg}")
endmacro()
message("=== Call macro ===")
Moo(${var})

function(Foo arg)
  message("arg = ${arg}")
  set(arg "abc")
  message("# After change the value of arg.")
  message("arg = ${arg}")
endfunction()
message("=== Call function ===")
Foo(${var})

#[=[
Output:
=== Call macro ===
arg = ABC
# After change the value of arg.
arg = ABC
=== Call function ===
arg = ABC
# After change the value of arg.
arg = abc
]=]