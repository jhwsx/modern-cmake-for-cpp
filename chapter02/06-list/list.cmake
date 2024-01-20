cmake_minimum_required(VERSION 3.2O.0)

set(myList "a;list;of;five;elements")
# 通过传递一个不加引号的 myList 引用，可以有效地向指令传递更多的参数 :
message("the list is:" ${myList}) # the list is:alistoffiveelements
message("the list is: ${myList}") # the list is: a;list;of;five;elements
set(myList2 a list "of;five;elements")
message("the list is:" ${myList2}) # the list is:alistoffiveelements
message("the list is: ${myList2}") # the list is: a;list;of;five;elements

# list() 指令
# 创建一个列表 letters
set(letters a b c d)

# 列表的读取
# list (LENGTH < list > <out-var>)
list(LENGTH letters length)
message("LENGTH: ${length}") # LENGTH: 4
# list (GET < list > <element index> [<index> ...] <out-var>)
list(GET letters 0 1 -1 -2 list)
message("GET: ${list}") # GET: a;b;d;c
# list (JOIN < list > <glue> <out-var>)
list(JOIN letters -G- joinStr)
message("JOIN: ${joinStr}") # JOIN: a-G-b-G-c-G-d
# list (SUBLIST < list > <begin> <length> <out-var>)
list(SUBLIST letters 1 2 subletters)
message("SUBLIST: ${subletters}") # SUBLIST: b;c

# 列表的查找 
# list (FIND <list> <value> <output variable>)
list(FIND letters d index)
message("FIND 'd': ${index}") # FIND 'd': 3

# 列表的修改
# list (APPEND <list> [<element> ...])
set(appendList a b c d)
list(APPEND appendList e f g)
message("APPEND: ${appendList}") # APPEND: a;b;c;d;e;f;g
# list (FILTER < list > { INCLUDE | EXCLUDE} REGEX <regex>)
set(filterList a b c d 1 2 3 4)
list(FILTER filterList INCLUDE REGEX [a-z])
message("FILTER: ${filterList}") # FILTER: a;b;c;d
# list (INSERT <list> <element_index> <element> [<element> ...])
set(insertList a b c d)
list(INSERT insertList 0 1 1 1 1)
message("INSERT: ${insertList}") # INSERT: 1;1;1;1;a;b;c;d
list(INSERT insertList -1 2 2 2 2)
message("INSERT: ${insertList}") # INSERT: 1;1;1;1;a;b;c;2;2;2;2;d
# list (POP_BACK <list> [<out-var>...])
set(popBackList a b c d)
list(POP_BACK popBackList lastOne)
message("POP_BACK: ${popBackList}, lastOne: ${lastOne}") # POP_BACK: a;b;c, lastOne: d
list(POP_BACK popBackList lastOne thelastbutone)
message("POP_BACK: ${popBackList}, lastOne: ${lastOne}, thelastbutone: ${thelastbutone}") # POP_BACK: a, lastOne: c, thelastbutone: b
# list (POP_FRONT <list> [<out-var>...])
set(popFrontList a b c d)
list(POP_FRONT popFrontList first)
message("POP_FRONT: ${popFrontList}, first: ${first}") # POP_FRONT: b;c;d, first: a
list(POP_FRONT popFrontList first second)
message("POP_FRONT: ${popFrontList}, first: ${first}, second: ${second}") # POP_FRONT: d, first: b, second: c
# list (PREPEND < list > [<element>...])
set(prependList a b c d)
list(PREPEND prependList z)
message("PREPEND: ${prependList}") # PREPEND: z;a;b;c;d
list(PREPEND prependList x y)
message("PREPEND: ${prependList}") # PREPEND: x;y;z;a;b;c;d
# list (REMOVE_ITEM <list> <value> [<value> ...])
set(removeItemList a a b c c d)
list(REMOVE_ITEM removeItemList a)
message("REMOVE_ITEM: ${removeItemList}") # REMOVE_ITEM: b;c;c;d
list(REMOVE_ITEM removeItemList b e)
message("REMOVE_ITEM: ${removeItemList}") # REMOVE_ITEM: c;c;d
# list (REMOVE_AT <list> <index> [<index> ...])
set(removeAtList a b c d e f)
list(REMOVE_AT removeAtList 0 -1)
message("REMOVE_AT: ${removeAtList}") # REMOVE_AT: b;c;d;e
# list(REMOVE_AT removeAtList 100) # 报错：list index: 100 out of range (-4, 3)
# list (REMOVE_DUPLICATES <list>)
set(removeDuplicatesList a a b c b c d d)
list(REMOVE_DUPLICATES removeDuplicatesList)
message("REMOVE_DUPLICATES: ${removeDuplicatesList}") # REMOVE_DUPLICATES: a;b;c;d
# list(TRANSFORM <list> <ACTION> [<SELECTOR>] [OUTPUT_VARIABLE <output variable>])¶
# list(TRANSFORM <list> (APPEND|PREPEND) <value> ...)
set(transformAppendList a b c d)
list(TRANSFORM transformAppendList APPEND > OUTPUT_VARIABLE outList)
message("TRANSFORM APPEND: ${transformAppendList}, outList: ${outList}") # TRANSFORM APPEND: a;b;c;d, outList: a>;b>;c>;d>
# list(TRANSFORM <list> <TOLOWER|TOUPPER> [OUTPUT_VARIABLE <output variable>])
set(transformUpperList a b c dd)
list(TRANSFORM transformUpperList TOUPPER)
message("TRANSFORM TOUPPER: ${transformUpperList}") # TRANSFORM TOUPPER: A;B;C;DD
# list(TRANSFORM <list> STRIP [OUTPUT_VARIABLE <output variable>])
set(transformStripList "   a" "b   " "  c  " "  d e  " f)
list(TRANSFORM transformStripList STRIP)
message("TRANSFORM STRIP: ${transformStripList}") # TRANSFORM STRIP: a;b;c;d e;f

# 列表的排序
# list (REVERSE <list>)
set(reverseList a b c d)
list(REVERSE reverseList)
message("REVERSE: ${reverseList}") # REVERSE: d;c;b;a
list(REVERSE reverseList)
message("REVERSE: ${reverseList}") # REVERSE: a;b;c;d
# list (SORT <list> [COMPARE <compare>] [CASE <case>] [ORDER <order>])
set(sortList 7 3 5 9 1)
list(SORT sortList)
message("SORT: ${sortList}") # SORT: 1;3;5;7;9
list(SORT sortList COMPARE NATURAL ORDER DESCENDING)
message("SORT: ${sortList}") # SORT: 9;7;5;3;1


