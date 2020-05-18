cmake_minimum_required(VERSION 3.17)
cmake_policy(SET CMP0076 NEW)

project(game LANGUAGES C)
add_library(${PROJECT_NAME} "")
target_sources(${PROJECT_NAME} PUBLIC cell.c celllist.c cell.h celllist.h)
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}) #-I.


##############################################################################################

set(TEST_PROJECT1 test_pract1)
add_executable(${TEST_PROJECT1})
target_sources(${TEST_PROJECT1} PUBLIC cunit_tests.c)
target_include_directories(${TEST_PROJECT1} PUBLIC /usr/local/include)
target_link_libraries(${TEST_PROJECT1} PUBLIC ${PROJECT_NAME} cunit)

#############################################################################################

enable_testing()
add_test(NAME "MyCUnitTest for Game" COMMAND ${TEST_PROJECT1})

target_compile_options(${PROJECT_NAME} PUBLIC "--coverage")
target_link_options(${PROJECT_NAME} PUBLIC "--coverage") 


add_custom_target(cover1 
COMMAND cmake --build . --target test_pract1
COMMAND gcovr -r ${CMAKE_SOURCE_DIR} ${CMAKE_BINARY_DIR} $<TARGET_FILE:${TEST_PROJECT1}>
WORKING_DIRECTORY ${CMAKE_BINARY_DIR})

add_custom_target(cover_html1
COMMAND cmake --build . --target test_pract1
COMMAND gcovr --html --html-detail -o index.html -r ${CMAKE_SOURCE_DIR} ${CMAKE_BINARY_DIR} $<TARGET_FILE:${TEST_PROJECT1}>
WORKING_DIRECTORY ${CMAKE_BINARY_DIR})


#install(TARGETS ${PROJECT_NAME})
#install(FILES f1.h DESTINATION include)


SET(NEIGHBOURHOOD_MODE CACHE STRING "Choose the type of Neighbourhood, Options are: \"Circular\" or \"Clipped\"")
target_compile_definitions(${PROJECT_NAME} PUBLIC NEIGHBOURHOOD=${NEIGHBOURHOOD_MODE}) #-D USING_LIB=1