#lang racket

(define (nested-reduce lst)
  (letrec ([reduce
            ;helper method that reduces a list
            (lambda (lst)
              (cond
                [(equal? lst '()) '()]
                ;base case
                [(member (car lst) (cdr lst)) (reduce (cons (car lst) (remove (car lst) (cdr lst))))]
                ;if (car lst) is in the rest of the list
                ;add (car lst) to the the rest of the list with one instance of (car lst) removed
                ;this is to keep checking for (car lst) in the rest of the lst
                [(not (member (car lst) (cdr lst))) (cons (car lst) (reduce (cdr lst)))]
                ;if (car lst) is not in the rest of the lst, I can add it to the lst to be returned
                ))])
    (reduce (cond
              [(equal? lst '()) '()]
              ;base case
              [(list? (car lst)) (cons (nested-reduce (car lst)) (nested-reduce (cdr lst)))]
              ;if (car lst) is a list, nested-reduce (car lst) and (cdr lst)
              ;to reduce the insides of (car lst) and the rest of lst
              [(integer? (car lst)) (cons (car lst) (nested-reduce (cdr lst)))]
              ;if (car lst) is an integer, add it to the returned list
              ;nested-reduce the rest of the lst
              ))
    ;reduce the list every time I finish looking at an element of the lst
     ))

(nested-reduce '())
(nested-reduce '(1))
(nested-reduce '(1 1))
(nested-reduce '(1 2))
(nested-reduce '(1 1 2))
(nested-reduce '(1 2 1))
(nested-reduce '(1 1 ()))
(nested-reduce '(1 () 1))
(nested-reduce '(() 1 1))
(nested-reduce '(() 1 ()))

(nested-reduce '(1 1 (2)))
(nested-reduce '(1 (2) 1))
(nested-reduce '((2) 1 1))
(nested-reduce '((2) 1 (2)))

(nested-reduce '(1 1 (2 2)))
(nested-reduce '(1 (2 2) 1))
(nested-reduce '((2 2) 1 1))
(nested-reduce '((2 2) 1 (2 2)))

(nested-reduce '(1 1 (2 (3 3))))
(nested-reduce '(1 (2 (3 3)) 1))
(nested-reduce '((2 (3 3)) 1 1))
(nested-reduce '((2 (3 3)) 1 (2 (3 3) (3 3))))
(nested-reduce '((2 (3 3)) 1 ((3 3) 2)))

(nested-reduce
 '(1 1 (2 2 (3 3) 2 (3)) 1 2 ((3 (4 4 4)) 2 2 (3 3 (4) 3)) 3 4 (2 2 (3) (3)) ((3 (4 4)) 2 (3 (4) 3))))
