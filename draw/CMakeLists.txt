cmake_minimum_required(VERSION 3.17)
cmake_policy(SET CMP0076 NEW)

project(draw LANGUAGES C)
#find_package(SDL2 CONFIG REQUIRED) 
add_library(${PROJECT_NAME} "")


target_sources(${PROJECT_NAME} PUBLIC ansi.c sdl.c ansi.h sdl.h)

target_include_directories(${PROJECT_NAME} PUBLIC /usr/local/include) #-I
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})#-I.


target_link_libraries( ${PROJECT_NAME} PUBLIC game)
#target_link_libraries(${PROJECT_NAME} PUBLIC SDL2::SDL2 SDL2::SDL2main)
target_link_libraries( ${PROJECT_NAME} PUBLIC SDL2)

##################################################################################


set(TEST_PROJECT2 test_pract2)
add_executable(${TEST_PROJECT2})
target_sources(${TEST_PROJECT2} PUBLIC cunit_tests.c)
target_include_directories(${TEST_PROJECT2} PUBLIC /usr/local/include)
target_link_libraries(${TEST_PROJECT2} PUBLIC ${PROJECT_NAME} cunit)


#############################################################

enable_testing()
add_test(NAME "MyCUnitTest for Draw" COMMAND ${TEST_PROJECT2})



target_compile_options(${PROJECT_NAME} PUBLIC "--coverage")
target_link_options(${PROJECT_NAME} PUBLIC "--coverage") 
#target_link_libraries(${PROJECT_NAME} PUBLIC "--coverage") peut etre



add_custom_target(cover2 
COMMAND cmake --build . --target test_pract2
COMMAND gcovr -r ${CMAKE_SOURCE_DIR} ${CMAKE_BINARY_DIR} $<TARGET_FILE:${TEST_PROJECT2}>
WORKING_DIRECTORY ${CMAKE_BINARY_DIR})


add_custom_target(cover_html2
COMMAND cmake --build . --target test_pract2
COMMAND gcovr --html --html-detail -o index.html -r ${CMAKE_SOURCE_DIR} ${CMAKE_BINARY_DIR} $<TARGET_FILE:${TEST_PROJECT2}>
WORKING_DIRECTORY ${CMAKE_BINARY_DIR})



#option(VAL "1 OR 2")
#if(VAL)
    #set(VALUE 1)
#else()
    #set(VALUE 2)
#endif()


#SET(Neighbourhood CACHE STRING "Circular Clipped")

#target_compile_definitions(${PROJECT_NAME} PUBLIC USING_LIB=${VALUE}) #-D USING_LIB=1


