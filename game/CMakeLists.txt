cmake_minimum_required(VERSION 3.17)
cmake_policy(SET CMP0076 NEW)

project(game LANGUAGES C)
add_library(${PROJECT_NAME} "")
target_sources(${PROJECT_NAME} PUBLIC cell.c celllist.c cell.h celllist.h)
target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}) #-I.

##############################################################################################

#set(MYLIB functions)
#set (SRC cell.c celllist.c)
#set (HEADERS cell.h celllist.h)
#add_library(${MYLIB})
#target_sources(${MYLIB} PRIVATE ${SRC} ${HEADERS})
#target_link_libraries(${MYLIB} INTERFACE m)


set(TEST_PROJECT1 test_pract1)
add_executable(${TEST_PROJECT1})
target_sources(${TEST_PROJECT1} PUBLIC cunit_tests.c)
target_include_directories(${TEST_PROJECT1} PUBLIC /usr/local/include)

target_link_libraries(${TEST_PROJECT1} PUBLIC ${PROJECT_NAME} cunit)


#target_link_libraries(${TEST_PROJECT1} INTERFACE cunit)






#############################################################

enable_testing()
add_test(NAME "MyCUnitTest" COMMAND ${TEST_PROJECT1})


#coverage


#target_compile_options(${PROJECT_NAME} PUBLIC "--coverage")

#target_link_libraries(${PROJECT_NAME} PUBLIC "--coverage")


#target_compile_definitions(${PROJECT_NAME} PUBLIC USING_LIB=${VALUE}) #-D USING_LIB=1
# install(TARGETS ${PROJECT_NAME})
# install(FILES f1.h DESTINATION include)