include(FetchContent)

FetchContent_Declare(
    GLFW      
    GIT_REPOSITORY  https://github.com/glfw/glfw.git    
    GIT_TAG        3.4      
)

if(NOT GLFW_POPULATED) 
    set(GLFW_BUILD_DOCS OFF)
    set(GLFW_BUILD_TESTS OFF)
    set(GLFW_BUILD_EXAMPLES OFF)
    FetchContent_Populate(GLFW)
endif()
FetchContent_GetProperties(GLFW)
message(GLFW_SOURCE_DIR ${GLFW_SOURCE_DIR})
add_subdirectory(${GLFW_SOURCE_DIR})