#lang racket
;Alex Yeoh
;Project 1 - Warm-up with Racket Lists
;Practice with lists and function creation in Racket

;1.
(cons 1 (cons 2 (cons 3 (cons 4 '()))))

;2.
(cons 1 (cons (cons 2 3) (cons 4 '())))

;3.
(cons 1 (cons 2 (cons (cons 3 (cons (cons 4 5) '())) '())))

;4.
(cons 1 (cons 2 (cons (cons 3 (cons 4 (cons 5 '()))) '())))

;5.
(cons (cons 1 2) (cons (cons 3 4) 5))

;6.
(cons 1 (cons 2 (cons 3 '())))

;7.
(cons 1 (cons 2 (cons 3 4)))

;8.
(cons 1 (cons 2 (cons (cons 3 4) (cons 5 6))))

;9.
(cons 1 (cons (cons '() 2) (cons 3 '())))

;10.
(cons (cons (cons 2 3) (cons 4 5)) (cons 6 7))

;avg3: averages 3 integers
;   Returns: the average of the 3 given integers
;   Parameters:
;      x (integer) - first integer
;      y (integer) - second integer
;      z (integer) - third integer
(define (avg3 x y z)
    (/ (+ x y z) 3))

;(avg3 2 5 7)

;third-item: returns the 3rd item in a list of 3 or more objects
;   Returns: the third item in a list of 3 or more objects
;   Parameters:
;      lst (list) - list of unknown length
(define (third-item lst)
    (if (> (length lst) 2) (caddr lst) "Not long enough"))

;(third-item '(1 2 3 4))
;(third-item '(1 2 3))
;(third-item '(1 2))
;(third-item '(1))
;(third-item '(a b c))