;; Auto-generated. Do not edit!


(when (boundp 'magang24::custom)
  (if (not (find-package "MAGANG24"))
    (make-package "MAGANG24"))
  (shadow 'custom (find-package "MAGANG24")))
(unless (find-package "MAGANG24::CUSTOM")
  (make-package "MAGANG24::CUSTOM"))

(in-package "ROS")
;;//! \htmlinclude custom.msg.html


(defclass magang24::custom
  :super ros::object
  :slots (_jarak _camera ))

(defmethod magang24::custom
  (:init
   (&key
    ((:jarak __jarak) 0.0)
    ((:camera __camera) 0)
    )
   (send-super :init)
   (setq _jarak (float __jarak))
   (setq _camera (round __camera))
   self)
  (:jarak
   (&optional __jarak)
   (if __jarak (setq _jarak __jarak)) _jarak)
  (:camera
   (&optional __camera)
   (if __camera (setq _camera __camera)) _camera)
  (:serialization-length
   ()
   (+
    ;; float64 _jarak
    8
    ;; uint32 _camera
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _jarak
       (sys::poke _jarak (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _camera
       (write-long _camera s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _jarak
     (setq _jarak (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _camera
     (setq _camera (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get magang24::custom :md5sum-) "5ce634444acc0081e465a4b737de7e73")
(setf (get magang24::custom :datatype-) "magang24/custom")
(setf (get magang24::custom :definition-)
      "float64 jarak
uint32 camera


")



(provide :magang24/custom "5ce634444acc0081e465a4b737de7e73")


