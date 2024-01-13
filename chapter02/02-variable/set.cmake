cmake_minimum_required(VERSION 3.20.0)
# 2.3 变量
# 变量引入部分
# 建议在变量名中只使用字母数字字符、减号 (-) 和下划线 (_)

# 设置变量
set(MyString1 "Text1")
set([[My String2]] "Text2") # 括号参数作为变量名时，允许包含空格
set("My String 3" "Text3") # 引号参数作为变量名时，允许包含空格
message(${MyString1})
message(${My\ String2})
message(${My\ String\ 3})

# 取消变量的设置
unset(MyString1)
unset([[My String2]])
unset("My String 3")