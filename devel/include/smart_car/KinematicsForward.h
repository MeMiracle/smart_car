// Generated by gencpp from file smart_car/KinematicsForward.msg
// DO NOT EDIT!


#ifndef SMART_CAR_MESSAGE_KINEMATICSFORWARD_H
#define SMART_CAR_MESSAGE_KINEMATICSFORWARD_H

#include <ros/service_traits.h>


#include <smart_car/KinematicsForwardRequest.h>
#include <smart_car/KinematicsForwardResponse.h>


namespace smart_car
{

struct KinematicsForward
{

typedef KinematicsForwardRequest Request;
typedef KinematicsForwardResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct KinematicsForward
} // namespace smart_car


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::smart_car::KinematicsForward > {
  static const char* value()
  {
    return "4f057007e926424c383ecaa1817c5251";
  }

  static const char* value(const ::smart_car::KinematicsForward&) { return value(); }
};

template<>
struct DataType< ::smart_car::KinematicsForward > {
  static const char* value()
  {
    return "smart_car/KinematicsForward";
  }

  static const char* value(const ::smart_car::KinematicsForward&) { return value(); }
};


// service_traits::MD5Sum< ::smart_car::KinematicsForwardRequest> should match 
// service_traits::MD5Sum< ::smart_car::KinematicsForward > 
template<>
struct MD5Sum< ::smart_car::KinematicsForwardRequest>
{
  static const char* value()
  {
    return MD5Sum< ::smart_car::KinematicsForward >::value();
  }
  static const char* value(const ::smart_car::KinematicsForwardRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::smart_car::KinematicsForwardRequest> should match 
// service_traits::DataType< ::smart_car::KinematicsForward > 
template<>
struct DataType< ::smart_car::KinematicsForwardRequest>
{
  static const char* value()
  {
    return DataType< ::smart_car::KinematicsForward >::value();
  }
  static const char* value(const ::smart_car::KinematicsForwardRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::smart_car::KinematicsForwardResponse> should match 
// service_traits::MD5Sum< ::smart_car::KinematicsForward > 
template<>
struct MD5Sum< ::smart_car::KinematicsForwardResponse>
{
  static const char* value()
  {
    return MD5Sum< ::smart_car::KinematicsForward >::value();
  }
  static const char* value(const ::smart_car::KinematicsForwardResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::smart_car::KinematicsForwardResponse> should match 
// service_traits::DataType< ::smart_car::KinematicsForward > 
template<>
struct DataType< ::smart_car::KinematicsForwardResponse>
{
  static const char* value()
  {
    return DataType< ::smart_car::KinematicsForward >::value();
  }
  static const char* value(const ::smart_car::KinematicsForwardResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SMART_CAR_MESSAGE_KINEMATICSFORWARD_H
