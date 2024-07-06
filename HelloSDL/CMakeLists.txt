cmake_minimum_required(VERSION 3.22)

project(HelloSDL
  LANGUAGES CXX
  )

find_package(SDL2 REQUIRED SDL2)

set(CMAKE_CXX_STANDARD 17)

add_executable(HelloSDL
  ./src/main.cpp
  )

target_link_libraries(HelloSDL PRIVATE SDL2::SDL2)
