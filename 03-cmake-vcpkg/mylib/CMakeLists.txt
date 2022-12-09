file(GLOB SOURCES 
    ${PROJECT_SOURCE_DIR}/mylib/*.?pp
    ${PROJECT_SOURCE_DIR}/mylib/main/*.?pp)

message("${SOURCES} ${PROJECT_SOURCE_DIR}")

add_library(MyLib ${SOURCES})

target_include_directories(MyLib PUBLIC .)