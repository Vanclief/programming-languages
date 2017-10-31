#lang racket
(define sample '(a (b (c) (d)) (e (f) (g))))

;; is leaf?
(define (leaf? tree)
 (cond
   [(not (list? tree)) false]
   [(empty? (cdr tree)) true]
   [else false]))

;; give me the children of the current node
(define (children tree)
  (cdr tree))

;; count the leaves in a level
(define (count-leaves tree)
  (cond
    [(leaf? tree) 1]
    [else (count-leaves-in-forest (children tree))]))

;; count the leaves in the rest of the tree
(define (count-leaves-in-forest forest)
  (cond
    [(null? forest) 0]
    [else (+ (count-leaves (car forest))
             (count-leaves-in-forest (cdr forest)))]))

(leaf? sample)
(leaf? '(a))
(leaf? '(a (b) (c) ))
(children sample)
(count-leaves sample)
(count-leaves-in-forest sample)
