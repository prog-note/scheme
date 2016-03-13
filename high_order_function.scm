(define (format1 x)
  (print (string-append "result: " (number->string x))))

(define (format2 x)
  (print (string-append "--- result: " (number->string x))))


;;; high order procedure receive another procedure as argument
(define (add a b format)
  (format (+ a b)))

(add 1 1 format1)
(add 1 1 format2)


;;; lambda - define procedure without associated name
(add 1 2
     (lambda (x)
       (print (string-append "lambda: " (number->string x)))))
