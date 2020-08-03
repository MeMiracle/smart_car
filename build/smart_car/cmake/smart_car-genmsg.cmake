# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "smart_car: 4 messages, 3 services")

set(MSG_I_FLAGS "-Ismart_car:/home/uav/ROS/car/src/smart_car/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(smart_car_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/KinematicsForward.srv" NAME_WE)
add_custom_target(_smart_car_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smart_car" "/home/uav/ROS/car/src/smart_car/srv/KinematicsForward.srv" "smart_car/Velocity:geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg" NAME_WE)
add_custom_target(_smart_car_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smart_car" "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/Movement.msg" NAME_WE)
add_custom_target(_smart_car_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smart_car" "/home/uav/ROS/car/src/smart_car/msg/Movement.msg" "smart_car/MovementGeneric:smart_car/Velocity:geometry_msgs/Pose2D:smart_car/MovementBezier"
)

get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/FrameToFrame.srv" NAME_WE)
add_custom_target(_smart_car_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smart_car" "/home/uav/ROS/car/src/smart_car/srv/FrameToFrame.srv" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg" NAME_WE)
add_custom_target(_smart_car_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smart_car" "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg" ""
)

get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg" NAME_WE)
add_custom_target(_smart_car_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smart_car" "/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg" "geometry_msgs/Pose2D"
)

get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/KinematicsInverse.srv" NAME_WE)
add_custom_target(_smart_car_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "smart_car" "/home/uav/ROS/car/src/smart_car/srv/KinematicsInverse.srv" "smart_car/Velocity:geometry_msgs/Pose2D"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_car
)
_generate_msg_cpp(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_car
)
_generate_msg_cpp(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/Movement.msg"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg;/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_car
)
_generate_msg_cpp(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_car
)

### Generating Services
_generate_srv_cpp(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/KinematicsForward.srv"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_car
)
_generate_srv_cpp(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/FrameToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_car
)
_generate_srv_cpp(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/KinematicsInverse.srv"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_car
)

### Generating Module File
_generate_module_cpp(smart_car
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_car
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(smart_car_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(smart_car_generate_messages smart_car_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/KinematicsForward.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_cpp _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_cpp _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/Movement.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_cpp _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/FrameToFrame.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_cpp _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_cpp _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_cpp _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/KinematicsInverse.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_cpp _smart_car_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smart_car_gencpp)
add_dependencies(smart_car_gencpp smart_car_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smart_car_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_car
)
_generate_msg_eus(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_car
)
_generate_msg_eus(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/Movement.msg"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg;/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_car
)
_generate_msg_eus(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_car
)

### Generating Services
_generate_srv_eus(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/KinematicsForward.srv"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_car
)
_generate_srv_eus(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/FrameToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_car
)
_generate_srv_eus(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/KinematicsInverse.srv"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_car
)

### Generating Module File
_generate_module_eus(smart_car
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_car
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(smart_car_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(smart_car_generate_messages smart_car_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/KinematicsForward.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_eus _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_eus _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/Movement.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_eus _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/FrameToFrame.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_eus _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_eus _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_eus _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/KinematicsInverse.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_eus _smart_car_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smart_car_geneus)
add_dependencies(smart_car_geneus smart_car_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smart_car_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_car
)
_generate_msg_lisp(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_car
)
_generate_msg_lisp(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/Movement.msg"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg;/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_car
)
_generate_msg_lisp(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_car
)

### Generating Services
_generate_srv_lisp(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/KinematicsForward.srv"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_car
)
_generate_srv_lisp(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/FrameToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_car
)
_generate_srv_lisp(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/KinematicsInverse.srv"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_car
)

### Generating Module File
_generate_module_lisp(smart_car
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_car
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(smart_car_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(smart_car_generate_messages smart_car_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/KinematicsForward.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_lisp _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_lisp _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/Movement.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_lisp _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/FrameToFrame.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_lisp _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_lisp _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_lisp _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/KinematicsInverse.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_lisp _smart_car_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smart_car_genlisp)
add_dependencies(smart_car_genlisp smart_car_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smart_car_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_car
)
_generate_msg_nodejs(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_car
)
_generate_msg_nodejs(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/Movement.msg"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg;/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_car
)
_generate_msg_nodejs(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_car
)

### Generating Services
_generate_srv_nodejs(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/KinematicsForward.srv"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_car
)
_generate_srv_nodejs(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/FrameToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_car
)
_generate_srv_nodejs(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/KinematicsInverse.srv"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_car
)

### Generating Module File
_generate_module_nodejs(smart_car
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_car
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(smart_car_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(smart_car_generate_messages smart_car_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/KinematicsForward.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_nodejs _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_nodejs _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/Movement.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_nodejs _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/FrameToFrame.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_nodejs _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_nodejs _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_nodejs _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/KinematicsInverse.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_nodejs _smart_car_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smart_car_gennodejs)
add_dependencies(smart_car_gennodejs smart_car_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smart_car_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_car
)
_generate_msg_py(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_car
)
_generate_msg_py(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/Movement.msg"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg;/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg;/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_car
)
_generate_msg_py(smart_car
  "/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_car
)

### Generating Services
_generate_srv_py(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/KinematicsForward.srv"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_car
)
_generate_srv_py(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/FrameToFrame.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_car
)
_generate_srv_py(smart_car
  "/home/uav/ROS/car/src/smart_car/srv/KinematicsInverse.srv"
  "${MSG_I_FLAGS}"
  "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_car
)

### Generating Module File
_generate_module_py(smart_car
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_car
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(smart_car_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(smart_car_generate_messages smart_car_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/KinematicsForward.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_py _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/MovementGeneric.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_py _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/Movement.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_py _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/FrameToFrame.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_py _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/Velocity.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_py _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/msg/MovementBezier.msg" NAME_WE)
add_dependencies(smart_car_generate_messages_py _smart_car_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/uav/ROS/car/src/smart_car/srv/KinematicsInverse.srv" NAME_WE)
add_dependencies(smart_car_generate_messages_py _smart_car_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(smart_car_genpy)
add_dependencies(smart_car_genpy smart_car_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS smart_car_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_car)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/smart_car
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(smart_car_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(smart_car_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_car)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/smart_car
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(smart_car_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(smart_car_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_car)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/smart_car
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(smart_car_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(smart_car_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_car)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/smart_car
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(smart_car_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(smart_car_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_car)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_car\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/smart_car
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(smart_car_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(smart_car_generate_messages_py geometry_msgs_generate_messages_py)
endif()
