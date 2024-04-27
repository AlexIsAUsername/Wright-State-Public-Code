#lang racket

;makes each level deeper, may be usable to make a more efficient mergesort
; (define (splitList lst)
;   (cond
;     [(< (length lst) 3) lst]
;     [else
;      (cons (splitList (take lst (round (/ (length lst) 2))))
;              (cons (splitList (drop lst (round (/ (length lst) 2)))) '()))]))

;splits everything into a list of lists of 1 or 2 numbers
(define (splitList lst)
  (cond
    [(< (length lst) 3) (list lst)]
    [else
     (append (splitList (take lst (round (/ (length lst) 2))))
             (append (splitList (drop lst (round (/ (length lst) 2)))) '()))]))

; (splitList '(1))
; (splitList '(1 2))
; (splitList '(1 2 3))
; (splitList '(1 2 3 4))
; (splitList '(1 2 3 4 5))
; (splitList '(1 2 3 4 5 6))
; (splitList '(1 2 3 4 5 6 7))
; (splitList '(1 2 3 4 5 6 7 8))
; (splitList '(1 2 3 4 5 6 7 8 9))

(define (smallSort lst)
  (cond
    [(= (length lst) 1) lst]
    [(> (car lst) (cadr lst)) (cons (cadr lst) (cons (car lst) '()))]
    [else lst]))

; (smallSort '(1))
; (smallSort '(1 2))
; (smallSort '(2 1))

(define (smallSortSplitLists lst)
  (cond
    [(equal? lst '()) '()]
    [(= (length (car lst)) 1) (cons (car lst) (smallSortSplitLists (cdr lst)))]
    [else (cons (smallSort (car lst)) (smallSortSplitLists (cdr lst)))]))

; (smallSortSplitLists (splitList '(1)))
; (smallSortSplitLists (splitList '(1 2)))
; (smallSortSplitLists (splitList '(2 1)))
; (smallSortSplitLists (splitList '(1 2 3)))
; (smallSortSplitLists (splitList '(1 3 2)))
; (smallSortSplitLists (splitList '(2 1 3)))
; (smallSortSplitLists (splitList '(2 3 1)))
; (smallSortSplitLists (splitList '(3 1 2)))
; (smallSortSplitLists (splitList '(3 2 1)))
; (smallSortSplitLists (splitList '(1 2 3 4)))
; (smallSortSplitLists (splitList '(1 2 4 3)))
; (smallSortSplitLists (splitList '(1 3 2 4)))
; (smallSortSplitLists (splitList '(1 3 4 2)))
; (smallSortSplitLists (splitList '(1 4 2 3)))
; (smallSortSplitLists (splitList '(1 4 3 2)))
; (smallSortSplitLists (splitList '(9 4 2 7 1 8 5 6 3)))

(define (bigSort lst1 lst2)
  (cond
    [(= (length lst1) (length lst2) 0) '()]
    [(equal? lst1 '()) (cons (car lst2) (bigSort lst1 (cdr lst2)))]
    [(equal? lst2 '()) (cons (car lst1) (bigSort lst2 (cdr lst1)))]
    [(< (car lst1) (car lst2)) (cons (car lst1) (bigSort (cdr lst1) lst2))]
    [(> (car lst1) (car lst2)) (cons (car lst2) (bigSort (cdr lst2) lst1))]
    [(= (car lst1) (car lst2)) (cons (car lst1) (cons (car lst2) (bigSort (cdr lst2) (cdr lst1))))]))

; (bigSort '(1 2) '(3))
; (bigSort '(1) '(3 4))
; (bigSort '(1 2) '(3 4))
; (bigSort '(1 3) '(2 4))
; (bigSort '(1 4) '(2 3))
; (bigSort '(2 3) '(1 4))
; (bigSort '(2 4) '(1 3))
; (bigSort '(3 4) '(1 2))
; (bigSort '(1 2 3) '(4 5))
; (bigSort '(1 2 3) '(4 5 6))

(define (divideBigSort lst)
  (cond
    [(equal? lst '()) '()]
    [(even? (length lst)) (cons (bigSort (car lst) (cadr lst)) (divideBigSort (cddr lst)))]
    [(= (length lst) 1) lst]
    [(odd? (length lst)) (cons (car lst) (divideBigSort (cdr lst)))]))

; (divideBigSort (smallSortSplitLists (splitList '(1))))
; (divideBigSort (smallSortSplitLists (splitList '(1 2))))
; (divideBigSort (smallSortSplitLists (splitList '(2 1))))
; (divideBigSort (smallSortSplitLists (splitList '(1 2 3))))
; (divideBigSort (smallSortSplitLists (splitList '(1 3 2))))
; (divideBigSort (smallSortSplitLists (splitList '(2 1 3))))
; (divideBigSort (smallSortSplitLists (splitList '(2 3 1))))
; (divideBigSort (smallSortSplitLists (splitList '(3 1 2))))
; (divideBigSort (smallSortSplitLists (splitList '(3 2 1))))
; (divideBigSort (smallSortSplitLists (splitList '(1 2 3 4))))
; (divideBigSort (smallSortSplitLists (splitList '(1 2 4 3))))
; (divideBigSort (smallSortSplitLists (splitList '(1 3 2 4))))
; (divideBigSort (smallSortSplitLists (splitList '(1 3 4 2))))
; (divideBigSort (smallSortSplitLists (splitList '(1 4 2 3))))
; (divideBigSort (smallSortSplitLists (splitList '(1 4 3 2))))
; (divideBigSort (smallSortSplitLists (splitList '(1 4 3 2 5))))
; (divideBigSort (smallSortSplitLists (splitList '(9 4 2 7 1 8 5 6 3))))

(define (keepSorting lst)
  (if (> (length lst) 1) (keepSorting (divideBigSort lst)) (append '() lst)))

; (keepSorting (smallSortSplitLists (splitList '(1))))
; (keepSorting (smallSortSplitLists (splitList '(1 2))))
; (keepSorting (smallSortSplitLists (splitList '(2 1))))
; (keepSorting (smallSortSplitLists (splitList '(1 2 3))))
; (keepSorting (smallSortSplitLists (splitList '(1 3 2))))
; (keepSorting (smallSortSplitLists (splitList '(2 1 3))))
; (keepSorting (smallSortSplitLists (splitList '(2 3 1))))
; (keepSorting (smallSortSplitLists (splitList '(3 1 2))))
; (keepSorting (smallSortSplitLists (splitList '(3 2 1))))
; (keepSorting (smallSortSplitLists (splitList '(1 2 3 4))))
; (keepSorting (smallSortSplitLists (splitList '(1 2 4 3))))
; (keepSorting (smallSortSplitLists (splitList '(1 3 2 4))))
; (keepSorting (smallSortSplitLists (splitList '(1 3 4 2))))
; (keepSorting (smallSortSplitLists (splitList '(1 4 2 3))))
; (keepSorting (smallSortSplitLists (splitList '(1 4 3 2))))
; (keepSorting (smallSortSplitLists (splitList '(1 4 3 2 5))))
; (keepSorting (smallSortSplitLists (splitList '(9 4 2 7 1 8 5 6 3))))

(define (mergesort lst)
  (letrec ([splitList (lambda (lst) ; splits a list into segments of 2 or 1 units
                        (cond
                          [(< (length lst) 3) (list lst)]
                          [else
                           (append (splitList (take lst (round (/ (length lst) 2))))
                                   (append (splitList (drop lst (round (/ (length lst) 2)))) '()))]))]
           [smallSort (lambda (lst) ; sorts one ^
                        (cond
                          [(= (length lst) 1) lst]
                          [(> (car lst) (cadr lst)) (cons (cadr lst) (cons (car lst) '()))]
                          [else lst]))]
           [smallSortSplitLists ; sorts each pair generated by splitList with smallSort
            (lambda (lst)
              (cond
                [(equal? lst '()) '()]
                [(= (length (car lst)) 1) (cons (car lst) (smallSortSplitLists (cdr lst)))]
                [else (cons (smallSort (car lst)) (smallSortSplitLists (cdr lst)))]))]
           [bigSort (lambda (lst1 lst2) ; sorts and combines two smaller lists
                      (cond
                        [(= (length lst1) (length lst2) 0) '()]
                        [(equal? lst1 '()) (cons (car lst2) (bigSort lst1 (cdr lst2)))]
                        [(equal? lst2 '()) (cons (car lst1) (bigSort lst2 (cdr lst1)))]
                        [(< (car lst1) (car lst2)) (cons (car lst1) (bigSort (cdr lst1) lst2))]
                        [(> (car lst1) (car lst2)) (cons (car lst2) (bigSort (cdr lst2) lst1))]
                        [(= (car lst1) (car lst2))
                         (cons (car lst1) (cons (car lst2) (bigSort (cdr lst2) (cdr lst1))))]))]
           [divideBigSort (lambda (lst) ; determines which pairs get sorted together
                            (cond
                              [(equal? lst '()) '()]
                              [(even? (length lst))
                               (cons (bigSort (car lst) (cadr lst)) (divideBigSort (cddr lst)))]
                              [(= (length lst) 1) lst]
                              [(odd? (length lst)) (cons (car lst) (divideBigSort (cdr lst)))]))]
           ; recursively call ^ until everything's together again
           [keepSorting (lambda (lst) (if (> (length lst) 1) (keepSorting (divideBigSort lst)) lst))])
    (if (equal? lst '()) '() (car (keepSorting (smallSortSplitLists (splitList lst)))))))

; (mergesort '(1))
; (mergesort '(1 2))
; (mergesort '(2 1))
; (mergesort '(1 2 3))
; (mergesort '(1 3 2))
; (mergesort '(2 1 3))
; (mergesort '(2 3 1))
; (mergesort '(3 1 2))
; (mergesort '(3 2 1))
; (mergesort '(1 2 3 4))
; (mergesort '(1 2 3 4 5))
; (mergesort '(1 2 3 4 5 6))
; (mergesort '(1 2 3 4 5 6 7))
; (mergesort '(1 2 3 4 5 6 7 8))
; (mergesort '(1 2 3 4 5 6 7 8 9))
; (mergesort '(6 8 0 1 2 7))
; (mergesort '(1 8 5 2 7 6))
; (mergesort '(2 5 6 7 4 3))
; (mergesort '(4 7 1 0 8 5))
; (mergesort '(7 4 6 8 0 1))
; (mergesort '(3 5 8 6 0 4 2))
; (mergesort '(1 6 8 2 0 7 3))
; (mergesort '(1 3 2 4 0 5 8))
; (mergesort '(5 2 4 1 3 8 6))
; (mergesort '(7 3 4 5 6 2 0))
; (mergesort '(2 1 7 3 0 6 4 8))
; (mergesort '(0 4 5 3 2 6 7 8))
; (mergesort '(5 0 2 1 3 4 7 8))
; (mergesort '(4 6 1 5 3 2 4))
; (mergesort '(2 1 8 6 4 7 8))
; (mergesort '(6 6 7 6 3 8 4))
; (mergesort '(2 7 5 5 5 8 5))
; (mergesort '(0 3 1 7 1 4 8))
; (mergesort '(2 1 1 1 2 7 3))
; (mergesort '(6 6 6 0 7 3 1))
; (mergesort '(2 0 2 6 1 7 2))
; (mergesort '(8 8 8 5 1 6 3))
; (mergesort '(2 0 8 7 4 8 4))
; (mergesort '(8 8 3 2 8 3 6))
; (mergesort '(6 6 3 0 6 0 6))
; (mergesort '(2 8 5 2 7 3 2))
; (mergesort '(1 7 8 0 2 2 3))
; (mergesort '(8 4 5 2 5 7 2))
; (mergesort '(4 1 6 0 7 8 8))
