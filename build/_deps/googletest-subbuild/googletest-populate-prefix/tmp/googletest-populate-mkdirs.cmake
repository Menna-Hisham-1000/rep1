# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "C:/Users/user/test1")
  file(MAKE_DIRECTORY "C:/Users/user/test1")
endif()
file(MAKE_DIRECTORY
  "C:/Users/user/test1/build/_deps/googletest-build"
  "C:/Users/user/test1/build/_deps/googletest-subbuild/googletest-populate-prefix"
  "C:/Users/user/test1/build/_deps/googletest-subbuild/googletest-populate-prefix/tmp"
  "C:/Users/user/test1/build/_deps/googletest-subbuild/googletest-populate-prefix/src/googletest-populate-stamp"
  "C:/Users/user/test1/build/_deps/googletest-subbuild/googletest-populate-prefix/src"
  "C:/Users/user/test1/build/_deps/googletest-subbuild/googletest-populate-prefix/src/googletest-populate-stamp"
)

set(configSubDirs Debug)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/user/test1/build/_deps/googletest-subbuild/googletest-populate-prefix/src/googletest-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/user/test1/build/_deps/googletest-subbuild/googletest-populate-prefix/src/googletest-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()