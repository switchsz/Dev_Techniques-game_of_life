cmake_minimum_required(VERSION 3.0)
cmake_policy(SET CMP0076 NEW)


project(mygame LANGUAGES C)


add_subdirectory(draw)
add_subdirectory(game)

set (SRC mainsdl.c)

add_executable(${PROJECT_NAME} "")


target_sources(${PROJECT_NAME} PUBLIC ${SRC})


target_link_libraries( ${PROJECT_NAME} PUBLIC draw game)



 
#install(TARGETS ${PROJECT_NAME})
############################




