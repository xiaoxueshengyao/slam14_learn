cmake_minimum_required( VERSION 2.8 )
project( useEigen )

set( CMAKE_BUILD_TYPE "Release" )
set( CMAKE_CXX_FLAGS "-O3" )

# 添加Eigen头文件
include_directories( "/usr/include/eigen3" )
#纯头文件  没有库文件，不用链接库

# in osx and brew install
# include_directories( /usr/local/Cellar/eigen/3.3.3/include/eigen3 )

add_executable( eigenMatrix eigenMatrix.cpp )
add_executable( homework homework.cpp)
add_executable( exapple eg.cpp)
