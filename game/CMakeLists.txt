cmake_minimum_required(VERSION 3.17)
cmake_policy(SET CMP0076 NEW)

project(game LANGUAGES C)

add_library(${PROJECT_NAME} "")

target_sources(${PROJECT_NAME} PUBLIC cell.c celllist.c cell.h celllist.h)


target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}) #-I.

#target_link_libraries(${PROJECT_NAME} INTERFACE m) #-lm

#target_compile_definitions(${PROJECT_NAME} PUBLIC USING_LIB=${VALUE}) #-D USING_LIB=1



