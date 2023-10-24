#lang racket

(define (set-equal? set1 set2)
  (let ([boolEqual #f])
    (cond
      [(= (length set1) (length set2) 0) (set! boolEqual #t)]
      [(not (= (length set1) (length set2))) (set! boolEqual #f)]
      [else (set! boolEqual (set-equal? (cdr set1) (remove (car set1) set2)))])
    boolEqual))

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

(display "nested-set-equal? specific tests\n")
(nested-set-equal? '(()) '(())) ;#t
(nested-set-equal? '((1 2)) '((2 1))) ;#t
(nested-set-equal? '((1 2)) '((2 3))) ;#f
(nested-set-equal? '((1 3)) '((2 1))) ;#f
(nested-set-equal? '(1 (1 2)) '(1 (2 1))) ;#t
(nested-set-equal? '(1 (1 2)) '((2 1) 1)) ;#t
(nested-set-equal? '((1 2) 1) '((2 1) 1)) ;#t
(nested-set-equal? '(1 (1 3)) '(1 (2 1))) ;#f
(nested-set-equal? '(1 (1 3)) '((2 1) 1)) ;#f
(nested-set-equal? '((1 3) 1) '((2 1) 1)) ;#f
(nested-set-equal? '((6 5) 1 2 (7 8)) '(2 1 (8 7) (6 5))) ;#t

(display "\nset-equal? tests but ran on nested-set-equal?\n")
(nested-set-equal? '() '()) ;#t
(nested-set-equal? '(1) '(1)) ;#t
(nested-set-equal? '(1 2) '(1 2)) ;#t
(nested-set-equal? '(1 2 3 4) '(3 4 2 1)) ;#t
(nested-set-equal? '(1 2) '(1)) ;#f
(nested-set-equal? '(1) '(2 1)) ;#f
(nested-set-equal? '(1 2 3 4) '(3 4 5 1)) ;#f

