project(pytracking)

set(
  SRC
  bindings.cpp
)
add_compile_options(
    "-Wno-unused-local-typedef"
)

set(Boost_USE_MULTITHREADED ON)

if (PLATFORM_MAC)
  set(Boost_USE_STATIC_LIBS ON)
  set(Boost_USE_STATIC_RUNTIME ON)
endif()

find_package(PythonLibs 2.7 REQUIRED)
find_package(Boost 1.54 REQUIRED COMPONENTS python)
include_directories(${PYTHON_INCLUDE_DIRS})

add_library(${PROJECT_NAME} MODULE ${SRC})

omim_link_libraries(${PROJECT_NAME} ${PYTHON_LIBRARIES} ${Boost_LIBRARIES} tracking coding geometry base)
set_target_properties(${PROJECT_NAME} PROPERTIES PREFIX "")
