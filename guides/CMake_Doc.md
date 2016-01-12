CMake Setup
===========

We will be using CMake to automate the creation of makefiles. CMake is a popular build system generator. The advantage of using CMake is that you can manage the build process of your software in a compiler-independent way. For instance, from the same CMake file, you could generate a Linux makefile and a Visual Studio project file.

The most common commands we will use in this course are

 project(assignment)
 add_library(LibraryName file1.cpp file2.cpp)
 add_executable(ExecutableName file3.cpp file4.cpp)
 target_link_libraries(ExecutableName  LibraryName)

A basic tutorial is available [here](httpwww.cmake.orgcmakehelpcmake_tutorial.html).

Once you have a CMakeLists.txt file, you can generate either unix makefiles or unix makefiles along with an eclipse project file. The generated eclipse project can then be imported into eclipse.

1. To generate a simple makefile, do the following

 ```bash
  $ cd directory-with-CMakeLists.txt
  $ cmake .
 ```

 This will generate a makefile. Once this is generated, you can build your project by issuing a make command

 ```bash
  $ make
 ```


2. To generate eclipse settings files and a makefile, do the following

 ```bash
 $ cmake -GEclipse CDT4 - Unix Makefiles .
 ```

You can read more about the eclipse project with cmake [here](httpwww.cmake.orgWikiEclipse_CDT4_Generator).

Prepared by:
Abhishek D.

Daniel B.