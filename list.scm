;;; list of elements
(print (list 1 2 3 4))

;;; manual linked list could be relized with pairs
(define x
  (cons 1
        (cons 2
              (cons 3
                    (cons 4 '())))))

;;; map method for iterating over custome linked list
(define (my_map custome_list method)
  (define (iter l)
    (method (car l))
    (if (null? (cdr l))
      0
      (iter (cdr l))))
  (iter custome_list))

;; print each value of list
(my_map x print)
