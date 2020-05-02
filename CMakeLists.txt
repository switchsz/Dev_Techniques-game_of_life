cmake_minimum_required(VERSION 3.6)

project(ExampleSDL LANGUAGES C)

find_package(SDL2 CONFIG REQUIRED )

add_executable(${PROJECT_NAME} "")
target_sources(${PROJECT_NAME} PRIVATE example_sdl.c)
target_link_libraries(${PROJECT_NAME} PUBLIC SDL2::SDL2 SDL2::SDL2main)
