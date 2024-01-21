cmake_minimum_required(VERSION 3.20.0)

#[=[
foreach(<loop_var> <items>)
  <commands>
endforeach()
]=]
set(letters a b c d)
message("letter in letters:")
foreach(letter ${letters})
  message(STATUS "${letter}")
endforeach()

# foreach(<loop_var> RANGE <stop>)
# 计算 1 到 10 的和
set(sum 0)
foreach(i RANGE 10)
  math(EXPR sum "${sum} + ${i}")
endforeach()
message("the sum from 0 to 10: ${sum}")

# 计算 1 到 10 的奇数和
set(sum 0)
foreach(i RANGE 10)
  math(EXPR even "${i} % 2")
  if (even EQUAL 0)
    continue()
  endif()
  math(EXPR sum "${sum} + ${i}")
endforeach()
message("the odd sum from 0 to 10: ${sum}")

# foreach(<loop_var> RANGE <start> <stop> [<step>])
# 计算 1 到 10 的偶数和
set(sum 0)
foreach(i RANGE 0 10 2)
  math(EXPR sum "${sum} + ${i}")
endforeach()
message("the even sum from 0 to 10: ${sum}")

# foreach(<loop_var> IN [LISTS [<lists>]] [ITEMS [<items>]])
set(MY_LIST 1 2 3)
foreach(VAR IN LISTS MY_LIST ITEMS e f)
    message(STATUS ${VAR})
endforeach()

set(A 0;1)
set(B 2 3)
set(C "4 5")
set(D 6;7 8)
set(E "")
foreach(X IN LISTS A B C D E)
  message(STATUS "X=${X}")
endforeach()

# foreach(<loop_var>... IN ZIP_LISTS <lists>)
list(APPEND English one two three four)
list(APPEND Bahasa satu dua tiga)

foreach(num IN ZIP_LISTS English Bahasa)
  message(STATUS "num_0=${num_0}, num_1=${num_1}")
endforeach()

foreach(en ba IN ZIP_LISTS English Bahasa)
  message(STATUS "en=${en}, ba=${ba}")
endforeach()