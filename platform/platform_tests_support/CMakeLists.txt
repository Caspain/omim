set(
  SRC
  scoped_dir.cpp
  scoped_dir.hpp
  scoped_file.cpp
  scoped_file.hpp
  scoped_mwm.cpp
  scoped_mwm.hpp
  test_socket.cpp
  test_socket.hpp
  writable_dir_changer.cpp
  writable_dir_changer.hpp
)

add_library(platform_tests_support ${SRC})
