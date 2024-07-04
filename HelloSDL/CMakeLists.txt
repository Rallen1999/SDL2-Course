cmake_minimum_required(VERSION 3.22)

project(HelloSDL
  LANGUAGES CXX
  )

find_package(SDL3 REQUIRED SDL3)

set(CMAKE_CXX_STANDARD 17)

add_executable(HelloSDL
  ./src/main.cpp
  )

target_link_libraries(HelloSDL PRIVATE SDL3::SDL3)
