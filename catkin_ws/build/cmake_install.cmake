# Install script for directory: /home/david/rv-marine-gazebo/catkin_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/david/rv-marine-gazebo/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/david/rv-marine-gazebo/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/david/rv-marine-gazebo/catkin_ws/install" TYPE PROGRAM FILES "/home/david/rv-marine-gazebo/catkin_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/david/rv-marine-gazebo/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/david/rv-marine-gazebo/catkin_ws/install" TYPE PROGRAM FILES "/home/david/rv-marine-gazebo/catkin_ws/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/david/rv-marine-gazebo/catkin_ws/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/david/rv-marine-gazebo/catkin_ws/install" TYPE FILE FILES "/home/david/rv-marine-gazebo/catkin_ws/build/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/david/rv-marine-gazebo/catkin_ws/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/david/rv-marine-gazebo/catkin_ws/install" TYPE FILE FILES "/home/david/rv-marine-gazebo/catkin_ws/build/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/david/rv-marine-gazebo/catkin_ws/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/david/rv-marine-gazebo/catkin_ws/install" TYPE FILE FILES "/home/david/rv-marine-gazebo/catkin_ws/build/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/david/rv-marine-gazebo/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/david/rv-marine-gazebo/catkin_ws/install" TYPE FILE FILES "/home/david/rv-marine-gazebo/catkin_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/david/rv-marine-gazebo/catkin_ws/build/gtest/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/hector_gazebo/hector_gazebo/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/hector_gazebo/hector_gazebo_worlds/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/hector_localization/hector_localization/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/hector_gazebo/hector_sensors_gazebo/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/kingfisher_utils/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/marine_duckiebot/marine_duckiebot_control/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/marine_duckiebot/marine_duckiebot_msgs/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/marine_duckiebot/marine_duckiebot_navigation/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/kingfisher/kingfisher_msgs/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/kingfisher/kingfisher_description/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/kingfisher_control/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/buoyancy_gazebo_plugin/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/hector_gazebo/hector_gazebo_plugins/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/hector_localization/hector_pose_estimation_core/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/hector_localization/hector_pose_estimation/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/kingfisher_gazebo/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/hector_localization/message_to_tf/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/geonav_transform/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/bamboo_lake_gazebo/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/hector_gazebo/hector_gazebo_thermal_camera/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/robotx_tutorial/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/usv_gazebo_plugins/cmake_install.cmake")
  include("/home/david/rv-marine-gazebo/catkin_ws/build/marine_duckiebot/marine_duckiebot_description/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/david/rv-marine-gazebo/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
