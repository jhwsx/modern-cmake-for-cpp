cmake_minimum_required(VERSION 3.2O.0)

set(myList "a;list;of;five;elements")
# 通过传递一个不加引号的 myList 引用，可以有效地向指令传递更多的参数 :
message("the list is:" ${myList})
set(myList2 a list "of;five;elements")
message("the list is:" ${myList2})

# list() 指令
# 创建一个列表 letters
set(letters a b c d)
# list (LENGTH < list > <out-var>)
list(LENGTH letters length)
message("LENGTH: ${length}")
# list (GET < list > <element index> [<index> ...] <out-var>)
list(GET letters 0 1 -1 -2 list)
message("GET: ${list}")
# list (JOIN < list > <glue> <out-var>)
list(JOIN letters -G- joinStr)
message("JOIN: ${joinStr}")