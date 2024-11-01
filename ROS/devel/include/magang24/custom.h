// Generated by gencpp from file magang24/custom.msg
// DO NOT EDIT!


#ifndef MAGANG24_MESSAGE_CUSTOM_H
#define MAGANG24_MESSAGE_CUSTOM_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace magang24
{
template <class ContainerAllocator>
struct custom_
{
  typedef custom_<ContainerAllocator> Type;

  custom_()
    : jarak(0.0)
    , camera(0)  {
    }
  custom_(const ContainerAllocator& _alloc)
    : jarak(0.0)
    , camera(0)  {
  (void)_alloc;
    }



   typedef double _jarak_type;
  _jarak_type jarak;

   typedef uint32_t _camera_type;
  _camera_type camera;





  typedef boost::shared_ptr< ::magang24::custom_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::magang24::custom_<ContainerAllocator> const> ConstPtr;

}; // struct custom_

typedef ::magang24::custom_<std::allocator<void> > custom;

typedef boost::shared_ptr< ::magang24::custom > customPtr;
typedef boost::shared_ptr< ::magang24::custom const> customConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::magang24::custom_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::magang24::custom_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::magang24::custom_<ContainerAllocator1> & lhs, const ::magang24::custom_<ContainerAllocator2> & rhs)
{
  return lhs.jarak == rhs.jarak &&
    lhs.camera == rhs.camera;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::magang24::custom_<ContainerAllocator1> & lhs, const ::magang24::custom_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace magang24

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::magang24::custom_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::magang24::custom_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::magang24::custom_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::magang24::custom_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::magang24::custom_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::magang24::custom_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::magang24::custom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5ce634444acc0081e465a4b737de7e73";
  }

  static const char* value(const ::magang24::custom_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5ce634444acc0081ULL;
  static const uint64_t static_value2 = 0xe465a4b737de7e73ULL;
};

template<class ContainerAllocator>
struct DataType< ::magang24::custom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "magang24/custom";
  }

  static const char* value(const ::magang24::custom_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::magang24::custom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 jarak\n"
"uint32 camera\n"
"\n"
;
  }

  static const char* value(const ::magang24::custom_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::magang24::custom_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.jarak);
      stream.next(m.camera);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct custom_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::magang24::custom_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::magang24::custom_<ContainerAllocator>& v)
  {
    s << indent << "jarak: ";
    Printer<double>::stream(s, indent + "  ", v.jarak);
    s << indent << "camera: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.camera);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAGANG24_MESSAGE_CUSTOM_H
