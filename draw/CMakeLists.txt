cmake_minimum_required(VERSION 3.17)
cmake_policy(SET CMP0076 NEW)

project(draw LANGUAGES C)
find_package(SDL2 CONFIG REQUIRED) 
add_library(${PROJECT_NAME} "")

target_sources(${PROJECT_NAME} PUBLIC ansi.c sdl.c ansi.h sdl.h)

target_include_directories(${PROJECT_NAME} PUBLIC /usr/local/include) #-I
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})#-I.


target_link_libraries( ${PROJECT_NAME} PUBLIC game)
target_link_libraries(${PROJECT_NAME} PUBLIC SDL2::SDL2 SDL2::SDL2main)

##################################################################################


set(TEST_PROJECT1 test_pract2)
add_executable(${TEST_PROJECT1})
target_sources(${TEST_PROJECT1} PUBLIC cunit_tests.c)
target_include_directories(${TEST_PROJECT1} PUBLIC /usr/local/include)
target_link_libraries(${TEST_PROJECT1} PUBLIC ${PROJECT_NAME} cunit)


#############################################################

enable_testing()
add_test(NAME "MyCUnitTest" COMMAND ${TEST_PROJECT1})