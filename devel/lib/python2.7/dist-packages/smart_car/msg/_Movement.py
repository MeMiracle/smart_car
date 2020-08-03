# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from smart_car/Movement.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import smart_car.msg
import geometry_msgs.msg

class Movement(genpy.Message):
  _md5sum = "68a9ba8e542ff32c2d272bc9497c5912"
  _type = "smart_car/Movement"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint8 movement
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
"""
  # Pseudo-constants
  BEZIER = 0
  GENERIC = 1
  NONE = 2
  WHEEL = 3
  POSITION_ABSOLUTE = 0
  POSITION_RELATIVE = 1
  VELOCITY = 2
  HYBRID = 0
  MOBILE = 1
  MOBILE_RAW = 2
  WORLD = 3

  __slots__ = ['movement','wheel','generic','bezier']
  _slot_types = ['uint8','smart_car/Velocity','smart_car/MovementGeneric','smart_car/MovementBezier']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       movement,wheel,generic,bezier

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Movement, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.movement is None:
        self.movement = 0
      if self.wheel is None:
        self.wheel = smart_car.msg.Velocity()
      if self.generic is None:
        self.generic = smart_car.msg.MovementGeneric()
      if self.bezier is None:
        self.bezier = smart_car.msg.MovementBezier()
    else:
      self.movement = 0
      self.wheel = smart_car.msg.Velocity()
      self.generic = smart_car.msg.MovementGeneric()
      self.bezier = smart_car.msg.MovementBezier()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_B3d2B3dB().pack(_x.movement, _x.wheel.v_left, _x.wheel.v_back, _x.wheel.v_right, _x.generic.type, _x.generic.frame, _x.generic.target.x, _x.generic.target.y, _x.generic.target.theta, _x.bezier.frame))
      length = len(self.bezier.targetTranslation)
      buff.write(_struct_I.pack(length))
      for val1 in self.bezier.targetTranslation:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
      length = len(self.bezier.targetRotation)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.bezier.targetRotation))
      _x = self
      buff.write(_get_struct_d2B().pack(_x.bezier.step, _x.bezier.offsetTraslation, _x.bezier.offsetRotation))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.wheel is None:
        self.wheel = smart_car.msg.Velocity()
      if self.generic is None:
        self.generic = smart_car.msg.MovementGeneric()
      if self.bezier is None:
        self.bezier = smart_car.msg.MovementBezier()
      end = 0
      _x = self
      start = end
      end += 52
      (_x.movement, _x.wheel.v_left, _x.wheel.v_back, _x.wheel.v_right, _x.generic.type, _x.generic.frame, _x.generic.target.x, _x.generic.target.y, _x.generic.target.theta, _x.bezier.frame,) = _get_struct_B3d2B3dB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.bezier.targetTranslation = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose2D()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
        self.bezier.targetTranslation.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.bezier.targetRotation = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 10
      (_x.bezier.step, _x.bezier.offsetTraslation, _x.bezier.offsetRotation,) = _get_struct_d2B().unpack(str[start:end])
      self.bezier.offsetTraslation = bool(self.bezier.offsetTraslation)
      self.bezier.offsetRotation = bool(self.bezier.offsetRotation)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_B3d2B3dB().pack(_x.movement, _x.wheel.v_left, _x.wheel.v_back, _x.wheel.v_right, _x.generic.type, _x.generic.frame, _x.generic.target.x, _x.generic.target.y, _x.generic.target.theta, _x.bezier.frame))
      length = len(self.bezier.targetTranslation)
      buff.write(_struct_I.pack(length))
      for val1 in self.bezier.targetTranslation:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.theta))
      length = len(self.bezier.targetRotation)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.bezier.targetRotation.tostring())
      _x = self
      buff.write(_get_struct_d2B().pack(_x.bezier.step, _x.bezier.offsetTraslation, _x.bezier.offsetRotation))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.wheel is None:
        self.wheel = smart_car.msg.Velocity()
      if self.generic is None:
        self.generic = smart_car.msg.MovementGeneric()
      if self.bezier is None:
        self.bezier = smart_car.msg.MovementBezier()
      end = 0
      _x = self
      start = end
      end += 52
      (_x.movement, _x.wheel.v_left, _x.wheel.v_back, _x.wheel.v_right, _x.generic.type, _x.generic.frame, _x.generic.target.x, _x.generic.target.y, _x.generic.target.theta, _x.bezier.frame,) = _get_struct_B3d2B3dB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.bezier.targetTranslation = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose2D()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.theta,) = _get_struct_3d().unpack(str[start:end])
        self.bezier.targetTranslation.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.bezier.targetRotation = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      _x = self
      start = end
      end += 10
      (_x.bezier.step, _x.bezier.offsetTraslation, _x.bezier.offsetRotation,) = _get_struct_d2B().unpack(str[start:end])
      self.bezier.offsetTraslation = bool(self.bezier.offsetTraslation)
      self.bezier.offsetRotation = bool(self.bezier.offsetRotation)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_d2B = None
def _get_struct_d2B():
    global _struct_d2B
    if _struct_d2B is None:
        _struct_d2B = struct.Struct("<d2B")
    return _struct_d2B
_struct_B3d2B3dB = None
def _get_struct_B3d2B3dB():
    global _struct_B3d2B3dB
    if _struct_B3d2B3dB is None:
        _struct_B3d2B3dB = struct.Struct("<B3d2B3dB")
    return _struct_B3d2B3dB
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
