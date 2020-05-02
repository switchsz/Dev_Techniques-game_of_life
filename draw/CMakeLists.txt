cmake_minimum_required(VERSION 3.17)
cmake_policy(SET CMP0076 NEW)

project(draw LANGUAGES C)

add_library(${PROJECT_NAME} "")


find_package(SDL2 CONFIG REQUIRED)


target_sources(${PROJECT_NAME} PUBLIC ansi.c sdl.c ansi.h sdl.h)

target_include_directories(${PROJECT_NAME} PUBLIC include) #-I

target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})#-I.

target_link_libraries( ${PROJECT_NAME} PUBLIC game)


#target_link_libraries(${PROJECT_NAME} INTERFACE sdl2-2.0.0) #-lm
target_link_libraries(${PROJECT_NAME} PUBLIC SDL2::SDL2 SDL2::SDL2main)




