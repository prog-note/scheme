;;; some arithmetic operations
(print (+ (* 3 3)
          (/ 10 3)))

;;; define some variable
(define pi 3.14159)
(print pi)

;;; define some procedure
(define (square x) (* x x))
(print (square 2))

;;; cond - like case statement
(define (check x)
  (cond ((= x 0) (print "zero"))
        ((> x 0) (print "positive"))
        (else (print "negative"))))
(check 0)
(check 1)

;;; if, or, and, not, false/true
(if
  (or
    (and (= 1 1)
         (not (< 1 0)))
    (false))

  (print "true")
  (print "false"))
