cmake_minimum_required(VERSION 3.0)
cmake_policy(SET CMP0076 NEW)


project(mygame LANGUAGES C)


add_subdirectory(draw)
add_subdirectory(game)

set (SRC main.c)

add_executable(${PROJECT_NAME} "")


target_sources(${PROJECT_NAME} PUBLIC ${SRC})


target_link_libraries( ${PROJECT_NAME} PUBLIC draw game)



target_compile_options(${PROJECT_NAME} PUBLIC "--coverage")
target_link_libraries(${PROJECT_NAME} PUBLIC "--coverage")


add_custom_target(cover 
COMMAND cmake --build . --target test_pract1 test_pract2
COMMAND gcovr -r ${CMAKE_SOURCE_DIR} ${CMAKE_BINARY_DIR} $<TARGET_FILE:${PROJECT_NAME}>
WORKING_DIRECTORY ${CMAKE_BINARY_DIR})

add_custom_target(cover_html
COMMAND cmake --build . --target test_pract1 test_pract2
COMMAND [ ! -d Coverage ] && mkdir Coverage  || true
COMMAND rm -rf Coverage/*
COMMAND gcovr --html --html-detail -o Coverage/index.html -r ${CMAKE_SOURCE_DIR} ${CMAKE_BINARY_DIR} $<TARGET_FILE:${PROJECT_NAME}>
WORKING_DIRECTORY ${CMAKE_BINARY_DIR})