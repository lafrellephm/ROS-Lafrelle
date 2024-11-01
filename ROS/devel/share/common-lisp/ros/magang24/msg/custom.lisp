; Auto-generated. Do not edit!


(cl:in-package magang24-msg)


;//! \htmlinclude custom.msg.html

(cl:defclass <custom> (roslisp-msg-protocol:ros-message)
  ((jarak
    :reader jarak
    :initarg :jarak
    :type cl:float
    :initform 0.0)
   (camera
    :reader camera
    :initarg :camera
    :type cl:integer
    :initform 0))
)

(cl:defclass custom (<custom>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <custom>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'custom)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name magang24-msg:<custom> is deprecated: use magang24-msg:custom instead.")))

(cl:ensure-generic-function 'jarak-val :lambda-list '(m))
(cl:defmethod jarak-val ((m <custom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader magang24-msg:jarak-val is deprecated.  Use magang24-msg:jarak instead.")
  (jarak m))

(cl:ensure-generic-function 'camera-val :lambda-list '(m))
(cl:defmethod camera-val ((m <custom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader magang24-msg:camera-val is deprecated.  Use magang24-msg:camera instead.")
  (camera m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <custom>) ostream)
  "Serializes a message object of type '<custom>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'jarak))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'camera)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'camera)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'camera)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <custom>) istream)
  "Deserializes a message object of type '<custom>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'jarak) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'camera)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'camera)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'camera)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<custom>)))
  "Returns string type for a message object of type '<custom>"
  "magang24/custom")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'custom)))
  "Returns string type for a message object of type 'custom"
  "magang24/custom")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<custom>)))
  "Returns md5sum for a message object of type '<custom>"
  "5ce634444acc0081e465a4b737de7e73")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'custom)))
  "Returns md5sum for a message object of type 'custom"
  "5ce634444acc0081e465a4b737de7e73")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<custom>)))
  "Returns full string definition for message of type '<custom>"
  (cl:format cl:nil "float64 jarak~%uint32 camera~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'custom)))
  "Returns full string definition for message of type 'custom"
  (cl:format cl:nil "float64 jarak~%uint32 camera~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <custom>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <custom>))
  "Converts a ROS message object to a list"
  (cl:list 'custom
    (cl:cons ':jarak (jarak msg))
    (cl:cons ':camera (camera msg))
))
