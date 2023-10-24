#lang racket
;Alex Yeoh
;Project 2 - Recursive Functions
;Practice writing recursive code

;set-equal?: determines if two sets are equal
;   Returns: a boolean that informs the caller if the two sets are equal
;   Parameters:
;       set1 (list) - first list to compare
;       set2 (list) - second list to compare
(define (set-equal? set1 set2)
  (let ([boolEqual #f])
    ;return variable
    (cond
      [(= (length set1) (length set2) 0) (set! boolEqual #t)]
      ;base case where both lists are empty
      [(not (= (length set1) (length set2))) (set! boolEqual #f)]
      ;early return if sets are not equal length, because the lists have no duplicates
      [else (set! boolEqual (set-equal? (cdr set1) (remove (car set1) set2)))])
    ;if car set1 is in set2, recursively call
    boolEqual))

; (set-equal? '() '()) ;#t
; (set-equal? '(1) '(1)) ;#t
; (set-equal? '(1 2) '(1 2)) ;#t
; (set-equal? '(1 2 3 4) '(3 4 2 1)) ;#t
; (set-equal? '(1 2) '(1)) ;#f
; (set-equal? '(1) '(2 1)) ;#f
; (set-equal? '(1 2 3 4) '(3 4 5 1)) ;#f

;nested-set-equal?: determines if two sets are equal, handles lists in the sets
;   Returns: a boolean that informs the caller if the two sets are equal
;   Parameters:
;       set1 (list) - first list to compare
;       set2 (list) - second list to compare
(define (nested-set-equal? set1 set2)
  (letrec ([recursiveSort
            (lambda (set)
              (let ([returnList '()] [nestedList '()])
                (for ([i set])
                  (cond
                    [(list? i) (set! nestedList (append nestedList (list (recursiveSort i))))]
                    [(number? i) (set! returnList (append returnList (list i)))]))
                (set! returnList (sort returnList <))
                (set! returnList (append returnList nestedList))
                returnList))])
    (set-equal? (recursiveSort set1) (recursiveSort set2))))

; (nested-set-equal? '(()) '(())) ;#t
; (nested-set-equal? '((1 2)) '((2 1))) ;#t
; (nested-set-equal? '((1 2)) '((2 3))) ;#f
; (nested-set-equal? '((1 3)) '((2 1))) ;#f
; (nested-set-equal? '(1 (1 2)) '(1 (2 1))) ;#t
; (nested-set-equal? '(1 (1 2)) '((2 1) 1)) ;#t
; (nested-set-equal? '((1 2) 1) '((2 1) 1)) ;#t
; (nested-set-equal? '(1 (1 3)) '(1 (2 1))) ;#f
; (nested-set-equal? '(1 (1 3)) '((2 1) 1)) ;#f
; (nested-set-equal? '((1 3) 1) '((2 1) 1)) ;#f
; (nested-set-equal? '((6 5) 1 2 (7 8)) '(2 1 (8 7) (6 5))) ;#t

;union: returns a list that contains every unique object in either list
;   Returns: a list that contains every element in either lists once
;   Parameters:
;       set1 (list) - first list to compare
;       set2 (list) - second list to compare
(define (union set1 set2)
  (letrec ([notInOtherList
            (lambda (seta setb)
              (cond
                [(= (length setb) 0) '()]
                [(not (member (car setb) seta)) (cons (car setb) (notInOtherList seta (cdr setb)))]
                [(notInOtherList seta (cdr setb))]
                [(cons (car setb) (notInOtherList seta (cdr setb)))]))])
    (cond
      [(equal? set2 '()) set1]
      [(equal? set1 '()) set2]
      [else (append (notInOtherList set1 set2) set1)])))

;(union '(()) '(()))
; (union '() '()) ;'()
; (union '(1) '()) ;'(1)
; (union '() '(1)) ;'(1)
; (union '(1) '(1)) ;'(1)
; (union '(1) '(2)) ;'(2 1)
; (union '(1 2) '(1)) ;'(2 1)
; (union '(1) '(1 2)) ;'(2 1)
; (union '(1 2) '(2 3)) ;'(3 2 1)
; (union '(1 2) '(3 4)) ;'(4 3 2 1)
; (union '(1 2 3 4) '(2 3 4 5)) ;'(5 4 3 2 1)

;intersection: returns a list that contains every unique object in both lists
;   Returns: a list that contains every element in both lists
;   Parameters:
;       set1 (list) - first list to compare
;       set2 (list) - second list to compare
(define (intersection set1 set2)
  (cond
    [(equal? set1 '()) '()]
    [(equal? set2 '()) '()]
    [(not (member (car set1) set2)) (intersection (cdr set1) set2)]
    [(member (car set1) set2) (cons (car set1) (intersection (cdr set1) set2))]))

; (intersection '() '()) ;'()
; (intersection '(1) '()) ;'()
; (intersection '() '(1)) ;'()
; (intersection '(1) '(1)) ;'(1)
; (intersection '(1) '(2)) ;'()
; (intersection '(2) '(1)) ;'()
; (intersection '(1 2) '(1)) ;'(1)
; (intersection '(1) '(1 2)) ;'(1)
; (intersection '(1 2) '(2 3)) ;'(2)
; (intersection '(1 2) '(3 4)) ;'()
; (intersection '(1 2 3 4) '(2 3 4 5)) ;'(4 3 2)

;mergesort: sorts the given list with the mergesort algorithm
;   Returns: the given list sorted in ascending order
;   Parameters:
;       lst (list) - original unsorted list
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

; (mergesort '())
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

;powerset: generates a list that contains all possible subsets of the given list
;   Returns: a list that contains all possible subsets of the given list
;   Parameters:
;       lst (list) - list of values to generate sublists
(define (powerset lst)
  ;generates lists that that have items in their given order
  (letrec ([generateStartingWith (lambda (lst1)
                                   (let ([lst2 '()])
                                     (set! lst2
                                           (map (lambda (a)
                                                  (set! lst2 (append lst2 (list a)))
                                                  lst2)
                                                lst1))
                                     lst2))]
           [generateAll
            (lambda (lst1 lst2)
              (if (equal? lst1 '())
                  '()
                  (append (generateStartingWith (append (remove (car lst1) lst2) (list (car lst1))))
                          (generateAll (cdr lst1)
                                       (append (remove (car lst1) lst2) (list (car lst1)))))))]
           ;makes the lst circular i.e start -> end until it reaches start again and passes it ^
           [feedGenerateAll
            (lambda (lst1)
              (cond
                [(equal? lst1 '()) '()]
                [else (append (generateAll (car lst1) (car lst1)) (feedGenerateAll (cdr lst1)))]))]
           ;recursiveSort from above, sorts all the sublists
           [recursiveSort
            (lambda (set)
              (let ([returnList '()] [nestedList '()])
                (for ([i set])
                  (cond
                    [(list? i) (set! nestedList (append nestedList (list (recursiveSort i))))]
                    [(number? i) (set! returnList (append returnList (list i)))]))
                (set! returnList (sort returnList <))
                (set! returnList (append returnList nestedList))
                returnList))])
    (cons '() (remove-duplicates (recursiveSort (feedGenerateAll (permutations lst)))))))

; (powerset '())
; (powerset '(1))
; (powerset '(1 2))
; (powerset '(1 2 3))
; (powerset '(1 2 3 4))

;nested-reduce: removes duplicates in a given list, can handle lists in the given list
;   Returns: a list with every duplicate element removed
;   Parameters:
;       lst (list) - original list that may have repeating elements
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

; (nested-reduce '())
; (nested-reduce '(1))
; (nested-reduce '(1 1))
; (nested-reduce '(1 2))
; (nested-reduce '(1 1 2))
; (nested-reduce '(1 2 1))
; (nested-reduce '(1 1 ()))
; (nested-reduce '(1 () 1))
; (nested-reduce '(() 1 1))
; (nested-reduce '(() 1 ()))

; (nested-reduce '(1 1 (2)))
; (nested-reduce '(1 (2) 1))
; (nested-reduce '((2) 1 1))
; (nested-reduce '((2) 1 (2)))

; (nested-reduce '(1 1 (2 2)))
; (nested-reduce '(1 (2 2) 1))
; (nested-reduce '((2 2) 1 1))
; (nested-reduce '((2 2) 1 (2 2)))

; (nested-reduce '(1 1 (2 (3 3))))
; (nested-reduce '(1 (2 (3 3)) 1))
; (nested-reduce '((2 (3 3)) 1 1))
; (nested-reduce '((2 (3 3)) 1 (2 (3 3) (3 3))))
; (nested-reduce '((2 (3 3)) 1 ((3 3) 2)))

; (nested-reduce '(1 1 (2 2 (3 3) 2 (3)) 1 2 ((3 (4 4 4)) 2 2 (3 3 (4) 3)) 3 4 (2 2 (3) (3)) ((3 (4 4)) 2 (3 (4) 3))))
