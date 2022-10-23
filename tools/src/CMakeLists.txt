cmake_minimum_required(VERSION 3.10.2)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -pthread")

project(airspyhf_rx_udp)

include_directories(airspyhf_rx_udp
    /usr/include/libairspyhf)

add_executable(airspyhf_rx_udp 
    airspyhf_rx.c)

find_package(MAVSDK REQUIRED)

target_link_libraries(airspyhf_rx_udp
    airspyhf
    -lm
)

add_compile_options(airspyhf_rx_udp PRIVATE -g)
add_link_options(airspyhf_rx_udp PRIVATE -g)

add_compile_options(airspyhf_rx_udp PRIVATE -Wall -Wextra)
