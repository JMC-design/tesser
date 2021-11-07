(in-package :asdf-user)
(defsystem "tesser"
  :description "basic interface to tesseract cli."
  :version "0.0.1"
  :licence "LGPL"
  :author "Johannes Martinez Calzada"
  :depends-on ("trivial-shell")
  :components ((:file "tesser")))
