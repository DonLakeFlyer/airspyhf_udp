cmake_minimum_required(VERSION 3.10.2)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_BUILD_TYPE Debug)

project(airspyhf_rx_udp)

include_directories(airspyhf_rx_udp
    /usr/include/libairspyhf)

add_executable(airspyhf_rx_udp 
    airspyhf_rx_udp.c)

find_package(MAVSDK REQUIRED)

target_link_libraries(airspyhf_rx_udp
    airspyhf
    -lm
)

add_compile_options(airspyhf_rx_udp PRIVATE -g)
add_link_options(airspyhf_rx_udp PRIVATE -g)

add_compile_options(airspyhf_rx_udp PRIVATE -Wall -Wextra)

install(TARGETS airspyhf_rx_udp RUNTIME DESTINATION bin)

