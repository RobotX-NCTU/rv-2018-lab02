# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kingfisher_control: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ikingfisher_control:/home/david/rv-marine-gazebo/catkin_ws/src/robotx_forum_tutorials/kingfisher_control/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kingfisher_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/david/rv-marine-gazebo/catkin_ws/src/robotx_forum_tutorials/kingfisher_control/msg/PidDiagnose.msg" NAME_WE)
add_custom_target(_kingfisher_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kingfisher_control" "/home/david/rv-marine-gazebo/catkin_ws/src/robotx_forum_tutorials/kingfisher_control/msg/PidDiagnose.msg" ""
)

#
#  langs = gencpp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kingfisher_control
  "/home/david/rv-marine-gazebo/catkin_ws/src/robotx_forum_tutorials/kingfisher_control/msg/PidDiagnose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kingfisher_control
)

### Generating Services

### Generating Module File
_generate_module_cpp(kingfisher_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kingfisher_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kingfisher_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kingfisher_control_generate_messages kingfisher_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/david/rv-marine-gazebo/catkin_ws/src/robotx_forum_tutorials/kingfisher_control/msg/PidDiagnose.msg" NAME_WE)
add_dependencies(kingfisher_control_generate_messages_cpp _kingfisher_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kingfisher_control_gencpp)
add_dependencies(kingfisher_control_gencpp kingfisher_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kingfisher_control_generate_messages_cpp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kingfisher_control
  "/home/david/rv-marine-gazebo/catkin_ws/src/robotx_forum_tutorials/kingfisher_control/msg/PidDiagnose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control
)

### Generating Services

### Generating Module File
_generate_module_py(kingfisher_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kingfisher_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kingfisher_control_generate_messages kingfisher_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/david/rv-marine-gazebo/catkin_ws/src/robotx_forum_tutorials/kingfisher_control/msg/PidDiagnose.msg" NAME_WE)
add_dependencies(kingfisher_control_generate_messages_py _kingfisher_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kingfisher_control_genpy)
add_dependencies(kingfisher_control_genpy kingfisher_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kingfisher_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kingfisher_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kingfisher_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kingfisher_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(kingfisher_control_generate_messages_py std_msgs_generate_messages_py)
endif()
