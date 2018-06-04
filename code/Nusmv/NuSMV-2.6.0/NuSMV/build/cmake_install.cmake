# Install script for directory: /home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/nusmv-config.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/lib/libnusmvshell.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/lib/libnusmvaddonscore.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/lib/libnusmvcore.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/lib/libnusmvrbc.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/lib/libnusmvgrammar.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/NuSMV" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/NuSMV")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/NuSMV"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/bin/NuSMV")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/NuSMV" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/NuSMV")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/NuSMV")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ltl2smv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ltl2smv")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ltl2smv"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/bin/ltl2smv")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ltl2smv" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ltl2smv")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/ltl2smv")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/nusmv" TYPE FILE FILES
    "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/LGPL-2.1"
    "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/NEWS"
    "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/README.txt"
    "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/README_PLATFORMS.txt"
    "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/README_zChaff.txt"
    "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/README_MiniSat.txt"
    "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/share/nusmv/master.nusmvrc"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/build-cudd/cmake_install.cmake")
  INCLUDE("/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/build-MiniSat/cmake_install.cmake")
  INCLUDE("/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/build-zchaff/cmake_install.cmake")
  INCLUDE("/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/code/nusmv/core/cmake_install.cmake")
  INCLUDE("/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/code/nusmv/addons_core/cmake_install.cmake")
  INCLUDE("/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/code/nusmv/shell/cmake_install.cmake")
  INCLUDE("/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/doc/cmake_install.cmake")
  INCLUDE("/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/contrib/cmake_install.cmake")
  INCLUDE("/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/examples/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/debleena/Projects/code/Nusmv/NuSMV-2.6.0/NuSMV/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
