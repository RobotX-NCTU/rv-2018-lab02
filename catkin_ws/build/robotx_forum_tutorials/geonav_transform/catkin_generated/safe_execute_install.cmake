execute_process(COMMAND "/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/geonav_transform/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/david/rv-marine-gazebo/catkin_ws/build/robotx_forum_tutorials/geonav_transform/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
