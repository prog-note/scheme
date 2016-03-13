;;; define pair
(define x (cons 1 2))

;;; get first
(print (car x))

;;; get second
(print (cdr x))


;;; custome implementation
;;; - pairs return lambda with access to our data
(define (pairs a b)
  (lambda (i)
    (cond ((= i 0) a)
          ((= i 1) b)
          (else (print "Argument not 0 or 1")))))

;;; like accessors
(define (first pair) (pair 0))
(define (second pair) (pair 1))

(define x (pairs 4 5))
(print (first x))
(print (second x))
(print (x 2))

(define y (pairs (pairs 4 5) (pairs 6 7)))
(print (first (first y))) ; first element of first pair
