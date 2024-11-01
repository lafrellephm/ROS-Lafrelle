// Auto-generated. Do not edit!

// (in-package magang24.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class custom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jarak = null;
      this.camera = null;
    }
    else {
      if (initObj.hasOwnProperty('jarak')) {
        this.jarak = initObj.jarak
      }
      else {
        this.jarak = 0.0;
      }
      if (initObj.hasOwnProperty('camera')) {
        this.camera = initObj.camera
      }
      else {
        this.camera = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type custom
    // Serialize message field [jarak]
    bufferOffset = _serializer.float64(obj.jarak, buffer, bufferOffset);
    // Serialize message field [camera]
    bufferOffset = _serializer.uint32(obj.camera, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type custom
    let len;
    let data = new custom(null);
    // Deserialize message field [jarak]
    data.jarak = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [camera]
    data.camera = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'magang24/custom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ce634444acc0081e465a4b737de7e73';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 jarak
    uint32 camera
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new custom(null);
    if (msg.jarak !== undefined) {
      resolved.jarak = msg.jarak;
    }
    else {
      resolved.jarak = 0.0
    }

    if (msg.camera !== undefined) {
      resolved.camera = msg.camera;
    }
    else {
      resolved.camera = 0
    }

    return resolved;
    }
};

module.exports = custom;
