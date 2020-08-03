;; Auto-generated. Do not edit!


(when (boundp 'smart_car::Movement)
  (if (not (find-package "SMART_CAR"))
    (make-package "SMART_CAR"))
  (shadow 'Movement (find-package "SMART_CAR")))
(unless (find-package "SMART_CAR::MOVEMENT")
  (make-package "SMART_CAR::MOVEMENT"))

(in-package "ROS")
;;//! \htmlinclude Movement.msg.html


(intern "*BEZIER*" (find-package "SMART_CAR::MOVEMENT"))
(shadow '*BEZIER* (find-package "SMART_CAR::MOVEMENT"))
(defconstant smart_car::Movement::*BEZIER* 0)
(intern "*GENERIC*" (find-package "SMART_CAR::MOVEMENT"))
(shadow '*GENERIC* (find-package "SMART_CAR::MOVEMENT"))
(defconstant smart_car::Movement::*GENERIC* 1)
(intern "*NONE*" (find-package "SMART_CAR::MOVEMENT"))
(shadow '*NONE* (find-package "SMART_CAR::MOVEMENT"))
(defconstant smart_car::Movement::*NONE* 2)
(intern "*WHEEL*" (find-package "SMART_CAR::MOVEMENT"))
(shadow '*WHEEL* (find-package "SMART_CAR::MOVEMENT"))
(defconstant smart_car::Movement::*WHEEL* 3)
(intern "*POSITION_ABSOLUTE*" (find-package "SMART_CAR::MOVEMENT"))
(shadow '*POSITION_ABSOLUTE* (find-package "SMART_CAR::MOVEMENT"))
(defconstant smart_car::Movement::*POSITION_ABSOLUTE* 0)
(intern "*POSITION_RELATIVE*" (find-package "SMART_CAR::MOVEMENT"))
(shadow '*POSITION_RELATIVE* (find-package "SMART_CAR::MOVEMENT"))
(defconstant smart_car::Movement::*POSITION_RELATIVE* 1)
(intern "*VELOCITY*" (find-package "SMART_CAR::MOVEMENT"))
(shadow '*VELOCITY* (find-package "SMART_CAR::MOVEMENT"))
(defconstant smart_car::Movement::*VELOCITY* 2)
(intern "*HYBRID*" (find-package "SMART_CAR::MOVEMENT"))
(shadow '*HYBRID* (find-package "SMART_CAR::MOVEMENT"))
(defconstant smart_car::Movement::*HYBRID* 0)
(intern "*MOBILE*" (find-package "SMART_CAR::MOVEMENT"))
(shadow '*MOBILE* (find-package "SMART_CAR::MOVEMENT"))
(defconstant smart_car::Movement::*MOBILE* 1)
(intern "*MOBILE_RAW*" (find-package "SMART_CAR::MOVEMENT"))
(shadow '*MOBILE_RAW* (find-package "SMART_CAR::MOVEMENT"))
(defconstant smart_car::Movement::*MOBILE_RAW* 2)
(intern "*WORLD*" (find-package "SMART_CAR::MOVEMENT"))
(shadow '*WORLD* (find-package "SMART_CAR::MOVEMENT"))
(defconstant smart_car::Movement::*WORLD* 3)
(defclass smart_car::Movement
  :super ros::object
  :slots (_movement _wheel _generic _bezier ))

(defmethod smart_car::Movement
  (:init
   (&key
    ((:movement __movement) 0)
    ((:wheel __wheel) (instance smart_car::Velocity :init))
    ((:generic __generic) (instance smart_car::MovementGeneric :init))
    ((:bezier __bezier) (instance smart_car::MovementBezier :init))
    )
   (send-super :init)
   (setq _movement (round __movement))
   (setq _wheel __wheel)
   (setq _generic __generic)
   (setq _bezier __bezier)
   self)
  (:movement
   (&optional __movement)
   (if __movement (setq _movement __movement)) _movement)
  (:wheel
   (&rest __wheel)
   (if (keywordp (car __wheel))
       (send* _wheel __wheel)
     (progn
       (if __wheel (setq _wheel (car __wheel)))
       _wheel)))
  (:generic
   (&rest __generic)
   (if (keywordp (car __generic))
       (send* _generic __generic)
     (progn
       (if __generic (setq _generic (car __generic)))
       _generic)))
  (:bezier
   (&rest __bezier)
   (if (keywordp (car __bezier))
       (send* _bezier __bezier)
     (progn
       (if __bezier (setq _bezier (car __bezier)))
       _bezier)))
  (:serialization-length
   ()
   (+
    ;; uint8 _movement
    1
    ;; smart_car/Velocity _wheel
    (send _wheel :serialization-length)
    ;; smart_car/MovementGeneric _generic
    (send _generic :serialization-length)
    ;; smart_car/MovementBezier _bezier
    (send _bezier :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _movement
       (write-byte _movement s)
     ;; smart_car/Velocity _wheel
       (send _wheel :serialize s)
     ;; smart_car/MovementGeneric _generic
       (send _generic :serialize s)
     ;; smart_car/MovementBezier _bezier
       (send _bezier :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _movement
     (setq _movement (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; smart_car/Velocity _wheel
     (send _wheel :deserialize buf ptr-) (incf ptr- (send _wheel :serialization-length))
   ;; smart_car/MovementGeneric _generic
     (send _generic :deserialize buf ptr-) (incf ptr- (send _generic :serialization-length))
   ;; smart_car/MovementBezier _bezier
     (send _bezier :deserialize buf ptr-) (incf ptr- (send _bezier :serialization-length))
   ;;
   self)
  )

(setf (get smart_car::Movement :md5sum-) "68a9ba8e542ff32c2d272bc9497c5912")
(setf (get smart_car::Movement :datatype-) "smart_car/Movement")
(setf (get smart_car::Movement :definition-)
      "uint8 movement
smart_car/Velocity wheel
smart_car/MovementGeneric generic
smart_car/MovementBezier bezier
# movement constants
uint8 BEZIER=0
uint8 GENERIC=1
uint8 NONE=2
uint8 WHEEL=3
# type constants
uint8 POSITION_ABSOLUTE=0
uint8 POSITION_RELATIVE=1
uint8 VELOCITY=2
# frame constants
uint8 HYBRID=0
uint8 MOBILE=1
uint8 MOBILE_RAW=2
uint8 WORLD=3

================================================================================
MSG: smart_car/Velocity
float64 v_left
float64 v_back
float64 v_right

================================================================================
MSG: smart_car/MovementGeneric
uint8 type
uint8 frame
geometry_msgs/Pose2D target

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

================================================================================
MSG: smart_car/MovementBezier
uint8 frame
geometry_msgs/Pose2D[] targetTranslation
float64[] targetRotation
float64 step
bool offsetTraslation
bool offsetRotation

")



(provide :smart_car/Movement "68a9ba8e542ff32c2d272bc9497c5912")


