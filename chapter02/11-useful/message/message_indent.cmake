cmake_minimum_required(VERSION 3.20.0)

function(foo)
  list(APPEND CMAKE_MESSAGE_INDENT " ")
  message("foo message")
endfunction()

list(APPEND CMAKE_MESSAGE_INDENT " ")
message("Before `foo`")
foo()
message("After `foo`")

#[=[
$ cmake --log-context -P message_indent.cmake
 Before `foo`
  foo message
 After `foo`
]=]