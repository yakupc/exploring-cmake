file(GLOB MYAPP_SOURCES 
    ${PROJECT_SOURCE_DIR}/src/*.?pp
    ${PROJECT_SOURCE_DIR}/src/main/*.?pp)

message("${MYAPP_SOURCES} ${PROJECT_SOURCE_DIR}")

add_executable(MyApp ${MYAPP_SOURCES})
target_link_libraries(MyApp PRIVATE MyLib)