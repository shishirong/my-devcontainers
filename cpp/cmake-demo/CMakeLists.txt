# 参考 https://github.com/ttroy50/cmake-examples/tree/master/02-sub-projects
cmake_minimum_required (VERSION 3.5)

project(cmake-demos)

# Add sub directories
add_subdirectory(c-demo)
add_subdirectory(cpp-demo)
