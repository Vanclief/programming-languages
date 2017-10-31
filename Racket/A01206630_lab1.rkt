#lang racket

;; triangle-area
(define (triangle-area b h)
  (* .5(* b h)))

;; n2 + 10
(define (a x)
  (+ 10 (* x x)))

;; (1/2)*n2 + 20
(define (b x)
  (+ 20 (* .5(* x x))))

;; 2 - (1/n)
(define (c x)
  (- 2 (/ 1 x)))

;; a*x2 + b*x + c = 0
(define (solutions a b c)
  (cond
    [(> (* b b) (* 4 (* a c)))2]
    [(< (* b b) (* 4 (* a c)))0]
    [else 1]))
