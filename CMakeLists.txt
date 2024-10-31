cmake_minimum_required(VERSION 3.5.0)
project(Libgpu VERSION 0.1.0 LANGUAGES C CXX)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake") 

include(FetchGLFW)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(Sources
    src/Main.cpp
    src/App.cpp
)

set(Includes
    src/App.hpp
)


add_executable(Libgpu ${Sources} ${Includes})

target_include_directories(${PROJECT_NAME} PRIVATE )


target_link_libraries(${PROJECT_NAME} PRIVATE glfw)
