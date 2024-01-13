cmake_minimum_required(VERSION 3.20.0)

message("CXX is $ENV{CXX}")

set(ENV{CXX} "clang++")

message("CXX is $ENV{CXX}")

unset(ENV{CXX})

message("CXX is $ENV{CXX}")

#[=[
Output:
CXX is 
CXX is clang++
CXX is 
]=]