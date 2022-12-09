find_package(GTest REQUIRED)

add_executable(MyLibTest mylib_test_main.cpp)

target_link_libraries(MyLibTest
 PRIVATE
  GTest::GTest
  MyLib)

add_test(MyLibGTest MyLibTest)