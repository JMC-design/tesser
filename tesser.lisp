(defpackage #:tesser
  (:use :cl)
  (:export #:act))
(in-package #:tesser)

(defparameter +engine+
  #(:legacy
    :lstm
    :combined
    :default))

(defun act (file base &key dpi languages (engine :default) data patterns words configs)
  (trivial-shell:shell-command
   (format nil "tesseract ~a ~a ~@[ --oem ~a~]~@[ --dpi ~a~]~@[ -l ~{~a~^+~}~]~@[ --tessdata-dir ~a~]~@[ --user-patterns ~a~]~@[ --user-words~a~]~@[ ~{~a ~}~]"
	   file base (position engine +engine+) dpi languages data patterns words configs)))
