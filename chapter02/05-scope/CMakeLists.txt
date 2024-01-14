cmake_minimum_required(VERSION 3.20.0)

function(Inner)
    message(" > Inner: ${V}")
    set(V 3)
    message(" < Inner: ${V}")
endfunction()

function(Outer)
    message(" > Outer: ${V}")
    set(V 2)
    Inner()
    message(" < Outer: ${V}")
endfunction()

set(V 1)
message("> Global: ${V}")
Outer()
message("< Global: ${V}")

message("===============")
function(InnerFunc)
    message(" > InnerFunc: ${W}")
    set(W 3 PARENT_SCOPE)
    set(W 4)
    message(" < InnerFunc: ${W}")
endfunction()

function(OuterFunc)
    message(" > OuterFunc: ${W}")
    set(W 2)
    InnerFunc()
    message(" < OuterFunc: ${W}")
endfunction()

set(W 1)
message("> Global: ${V}")
OuterFunc()
message("< Global: ${V}")


#[=[
> Global: 1
 > Outer: 1
 > Inner: 2
 < Inner: 3
 < Outer: 2
< Global: 1
===============
> Global: 1
 > OuterFunc: 1
 > InnerFunc: 2
 < InnerFunc: 4
 < OuterFunc: 3
< Global: 1
]=]