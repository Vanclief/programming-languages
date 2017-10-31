#lang racket
; A01206640
;

; Define function deep-all-x? which receives a list containing other lists (deep list) and an element x. The function returns true if every single element in the list of lists is x. Otherwise it returns false.

; Define function deep-reverse which receives a deep list. The function returns a list of lists with its elements in reverse order.  

(define (deep-reverse list)
  (cond
    [(empty? list) '()]
    [(list? (car list)) (cons (deep-reverse (cdr list))
                              (deep-reverse(car list)))]
    [else (append
            (deep-reverse(cdr list)) (cons (car list) '() )
            )]))

(deep-reverse '(a (b (c d)) e (f g)))
; TBH I have no idea whats going on with the parenthesis, and I have too many things

; > ((g f) e ((d c) b) a)

; Define function flatten that receives a deep list and return a list containing all the elements in a single 1 level list

(define (flatten list)
  (cond
    [(empty? list) '()]
    [(list? (car list)) (append (flatten (car list))
                                (flatten (cdr list)))]
    [else (cons (car list)
                (flatten (cdr list)))]))

(flatten '(a (b (c d)) e (f g)))
; > (a b c d e f g) 

; Define the function count-levels which counts the max depth of a tree

(define (count-levels tree)
  (cond
    [(null? (cdr tree)) 1]
    [else (+ 1 (apply max(map count-levels (cdr tree))))]))

; Thank god for apply max http://www.scheme.com/tspl3/objects.html

(count-levels '(a
                 (b
                   (c) (d))
                 (e
                   (f) (g))))
; > 3

; Define the function count-arity which counts the max number of children a single node of the tree has

(define (count-arity tree)
  (cond
    [(null? (cdr tree)) 0]
    [else (- (apply max(map count-list (cdr tree))) 1)]))

(define (count-list list)
  (if (null? list)
    0
    (+ 1 (count-list (cdr list)))
    )
  )

(count-arity '(a
                (b
                  (c) (d) (k) (q) (j))
                (e
                  (f) (g) (h) (i) )))

; > 4
