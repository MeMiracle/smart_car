;; Auto-generated. Do not edit!


(when (boundp 'smart_car::FrameToFrame)
  (if (not (find-package "SMART_CAR"))
    (make-package "SMART_CAR"))
  (shadow 'FrameToFrame (find-package "SMART_CAR")))
(unless (find-package "SMART_CAR::FRAMETOFRAME")
  (make-package "SMART_CAR::FRAMETOFRAME"))
(unless (find-package "SMART_CAR::FRAMETOFRAMEREQUEST")
  (make-package "SMART_CAR::FRAMETOFRAMEREQUEST"))
(unless (find-package "SMART_CAR::FRAMETOFRAMERESPONSE")
  (make-package "SMART_CAR::FRAMETOFRAMERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass smart_car::FrameToFrameRequest
  :super ros::object
  :slots (_input ))

(defmethod smart_car::FrameToFrameRequest
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

(defclass smart_car::FrameToFrameResponse
  :super ros::object
  :slots (_output ))

(defmethod smart_car::FrameToFrameResponse
  (:init
   (&key
    ((:output __output) (instance geometry_msgs::Pose2D :init))
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
    ;; geometry_msgs/Pose2D _output
    (send _output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _output
       (send _output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _output
     (send _output :deserialize buf ptr-) (incf ptr- (send _output :serialization-length))
   ;;
   self)
  )

(defclass smart_car::FrameToFrame
  :super ros::object
  :slots ())

(setf (get smart_car::FrameToFrame :md5sum-) "405de59229ff9ecc65cfa6d1fe41484d")
(setf (get smart_car::FrameToFrame :datatype-) "smart_car/FrameToFrame")
(setf (get smart_car::FrameToFrame :request) smart_car::FrameToFrameRequest)
(setf (get smart_car::FrameToFrame :response) smart_car::FrameToFrameResponse)

(defmethod smart_car::FrameToFrameRequest
  (:response () (instance smart_car::FrameToFrameResponse :init)))

(setf (get smart_car::FrameToFrameRequest :md5sum-) "405de59229ff9ecc65cfa6d1fe41484d")
(setf (get smart_car::FrameToFrameRequest :datatype-) "smart_car/FrameToFrameRequest")
(setf (get smart_car::FrameToFrameRequest :definition-)
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
geometry_msgs/Pose2D output


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
")

(setf (get smart_car::FrameToFrameResponse :md5sum-) "405de59229ff9ecc65cfa6d1fe41484d")
(setf (get smart_car::FrameToFrameResponse :datatype-) "smart_car/FrameToFrameResponse")
(setf (get smart_car::FrameToFrameResponse :definition-)
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
geometry_msgs/Pose2D output


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
")



(provide :smart_car/FrameToFrame "405de59229ff9ecc65cfa6d1fe41484d")


