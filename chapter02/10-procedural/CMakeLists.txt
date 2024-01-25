cmake_minimum_required(VERSION 3.20.0)
project(Procedural)

# 在文件的顶部声明一个入口点宏，并在文件的最后调用它。
macro(main)
  message("main()")
  setup_first_target()
  setup_second_target()
  setup_tests()
  message("end main()")
endmacro()

function(setup_first_target)
  message("  setup_first_target()")
endfunction()

function(setup_second_target)
  message("  setup_second_target()")
endfunction()

function(setup_tests)
  message("  setup_tests()")
endfunction()

main()