cmake_minimum_required(VERSION 3.20.0)

#[=[
macro (<name> [<argument> ]) 
    <commands> 
endmacro ()
]=]
macro(Test myVar)
  set(myVar "new value")
  message("argument: ${myVar}")
endmacro()

set(myVar "first value")
message("myVar is now: ${myVar}")
Test("called value")
message("myVar is now: ${myVar}")


#[=[
因为传递给宏的参数没有视为真正的变量，而是作为常量查找并替换指令。
Output:
myVar is now: first value
argument: called value
myVar is now: new value
]=]