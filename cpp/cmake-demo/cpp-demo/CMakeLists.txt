project(cpp-demo)

set(THE_CPM_FILE_PATH "${CMAKE_CURRENT_BINARY_DIR}/cmake/CPM.cmake")
if(NOT EXISTS ${THE_CPM_FILE_PATH})
    file(
        DOWNLOAD
        https://github.com/cpm-cmake/CPM.cmake/releases/download/v0.40.8/CPM.cmake
        ${CMAKE_CURRENT_BINARY_DIR}/cmake/CPM.cmake
        EXPECTED_HASH SHA256=78ba32abdf798bc616bab7c73aac32a17bbd7b06ad9e26a6add69de8f3ae4791
    )
endif()
include(${THE_CPM_FILE_PATH})

CPMFindPackage(
  NAME     spdlog
  URL      https://github.com/gabime/spdlog/archive/refs/tags/v1.12.0.zip
  URL_HASH SHA256=6174bf8885287422a6c6a0312eb8a30e8d22bcfcee7c48a6d02d1835d7769232
)

# Create the executable
add_executable(${PROJECT_NAME} main.cpp)

# Link the static library from subproject1 using its alias sub::lib1
# Link the header only library from subproject2 using its alias sub::lib2
# This will cause the include directories for that target to be added to this project
target_link_libraries(${PROJECT_NAME} spdlog::spdlog)
