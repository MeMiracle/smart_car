// Generated by gencpp from file smart_car/KinematicsInverseResponse.msg
// DO NOT EDIT!


#ifndef SMART_CAR_MESSAGE_KINEMATICSINVERSERESPONSE_H
#define SMART_CAR_MESSAGE_KINEMATICSINVERSERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <smart_car/Velocity.h>

namespace smart_car
{
template <class ContainerAllocator>
struct KinematicsInverseResponse_
{
  typedef KinematicsInverseResponse_<ContainerAllocator> Type;

  KinematicsInverseResponse_()
    : output()  {
    }
  KinematicsInverseResponse_(const ContainerAllocator& _alloc)
    : output(_alloc)  {
  (void)_alloc;
    }



   typedef  ::smart_car::Velocity_<ContainerAllocator>  _output_type;
  _output_type output;





  typedef boost::shared_ptr< ::smart_car::KinematicsInverseResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::smart_car::KinematicsInverseResponse_<ContainerAllocator> const> ConstPtr;

}; // struct KinematicsInverseResponse_

typedef ::smart_car::KinematicsInverseResponse_<std::allocator<void> > KinematicsInverseResponse;

typedef boost::shared_ptr< ::smart_car::KinematicsInverseResponse > KinematicsInverseResponsePtr;
typedef boost::shared_ptr< ::smart_car::KinematicsInverseResponse const> KinematicsInverseResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::smart_car::KinematicsInverseResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::smart_car::KinematicsInverseResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace smart_car

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'smart_car': ['/home/uav/ROS/car/src/smart_car/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::smart_car::KinematicsInverseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::smart_car::KinematicsInverseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::smart_car::KinematicsInverseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::smart_car::KinematicsInverseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smart_car::KinematicsInverseResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::smart_car::KinematicsInverseResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::smart_car::KinematicsInverseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "17afbbcc9d7e674dabef0f5797d91090";
  }

  static const char* value(const ::smart_car::KinematicsInverseResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x17afbbcc9d7e674dULL;
  static const uint64_t static_value2 = 0xabef0f5797d91090ULL;
};

template<class ContainerAllocator>
struct DataType< ::smart_car::KinematicsInverseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "smart_car/KinematicsInverseResponse";
  }

  static const char* value(const ::smart_car::KinematicsInverseResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::smart_car::KinematicsInverseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "smart_car/Velocity output\n\
\n\
\n\
================================================================================\n\
MSG: smart_car/Velocity\n\
float64 v_left\n\
float64 v_back\n\
float64 v_right\n\
";
  }

  static const char* value(const ::smart_car::KinematicsInverseResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::smart_car::KinematicsInverseResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.output);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct KinematicsInverseResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::smart_car::KinematicsInverseResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::smart_car::KinematicsInverseResponse_<ContainerAllocator>& v)
  {
    s << indent << "output: ";
    s << std::endl;
    Printer< ::smart_car::Velocity_<ContainerAllocator> >::stream(s, indent + "  ", v.output);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SMART_CAR_MESSAGE_KINEMATICSINVERSERESPONSE_H
