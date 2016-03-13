;;; Factorial (n! = n * (n - 1) * (n - 2) ..1)

;;; Linear recursion
(define (factorial n)
  (if (= n 1)
    1
    (* n(factorial (- n 1)))))

(print (factorial 3))


;;; Iteration - tail-recursion
(define (factorial n)
  (define (iterate result counter)
    (if (> counter n)
      product
      (iterate (* counter result)
               (+ counter 1))))
  (iterate 1 1))

(print (factorial 3))
