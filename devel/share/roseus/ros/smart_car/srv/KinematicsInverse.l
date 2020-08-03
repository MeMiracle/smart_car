;; Auto-generated. Do not edit!


(when (boundp 'smart_car::KinematicsInverse)
  (if (not (find-package "SMART_CAR"))
    (make-package "SMART_CAR"))
  (shadow 'KinematicsInverse (find-package "SMART_CAR")))
(unless (find-package "SMART_CAR::KINEMATICSINVERSE")
  (make-package "SMART_CAR::KINEMATICSINVERSE"))
(unless (find-package "SMART_CAR::KINEMATICSINVERSEREQUEST")
  (make-package "SMART_CAR::KINEMATICSINVERSEREQUEST"))
(unless (find-package "SMART_CAR::KINEMATICSINVERSERESPONSE")
  (make-package "SMART_CAR::KINEMATICSINVERSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass smart_car::KinematicsInverseRequest
  :super ros::object
  :slots (_input ))

(defmethod smart_car::KinematicsInverseRequest
  (:init
   (&key
    ((:input __input) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _input __input)
   self)
  (:input
   (&rest __input)
   (if (keywordp (car __input))
       (send* _input __input)
     (progn
       (if __input (setq _input (car __input)))
       _input)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _input
    (send _input :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _input
       (send _input :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _input
     (send _input :deserialize buf ptr-) (incf ptr- (send _input :serialization-length))
   ;;
   self)
  )

(defclass smart_car::KinematicsInverseResponse
  :super ros::object
  :slots (_output ))

(defmethod smart_car::KinematicsInverseResponse
  (:init
   (&key
    ((:output __output) (instance smart_car::Velocity :init))
    )
   (send-super :init)
   (setq _output __output)
   self)
  (:output
   (&rest __output)
   (if (keywordp (car __output))
       (send* _output __output)
     (progn
       (if __output (setq _output (car __output)))
       _output)))
  (:serialization-length
   ()
   (+
    ;; smart_car/Velocity _output
    (send _output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; smart_car/Velocity _output
       (send _output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; smart_car/Velocity _output
     (send _output :deserialize buf ptr-) (incf ptr- (send _output :serialization-length))
   ;;
   self)
  )

(defclass smart_car::KinematicsInverse
  :super ros::object
  :slots ())

(setf (get smart_car::KinematicsInverse :md5sum-) "cb684d22809e19793d1c5c527b5f8cf4")
(setf (get smart_car::KinematicsInverse :datatype-) "smart_car/KinematicsInverse")
(setf (get smart_car::KinematicsInverse :request) smart_car::KinematicsInverseRequest)
(setf (get smart_car::KinematicsInverse :response) smart_car::KinematicsInverseResponse)

(defmethod smart_car::KinematicsInverseRequest
  (:response () (instance smart_car::KinematicsInverseResponse :init)))

(setf (get smart_car::KinematicsInverseRequest :md5sum-) "cb684d22809e19793d1c5c527b5f8cf4")
(setf (get smart_car::KinematicsInverseRequest :datatype-) "smart_car/KinematicsInverseRequest")
(setf (get smart_car::KinematicsInverseRequest :definition-)
      "geometry_msgs/Pose2D input

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---
smart_car/Velocity output


================================================================================
MSG: smart_car/Velocity
float64 v_left
float64 v_back
float64 v_right
")

(setf (get smart_car::KinematicsInverseResponse :md5sum-) "cb684d22809e19793d1c5c527b5f8cf4")
(setf (get smart_car::KinematicsInverseResponse :datatype-) "smart_car/KinematicsInverseResponse")
(setf (get smart_car::KinematicsInverseResponse :definition-)
      "geometry_msgs/Pose2D input

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---
smart_car/Velocity output


================================================================================
MSG: smart_car/Velocity
float64 v_left
float64 v_back
float64 v_right
")



(provide :smart_car/KinematicsInverse "cb684d22809e19793d1c5c527b5f8cf4")


