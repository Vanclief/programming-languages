#lang racket

;Write your own map function which receives a function and a list as an argument, and the applies the function to each element on the list. Submit your script to blackboard in the hand in section. Use the following example to test your function. (50)

(define (add_1 x)
  (+ 1  x))

(define (subtract_10 x)
  (- x 10))

(define (map func list)
  (cond
    [(empty? list) '()]
    [(not(empty? list))
     (cons (func (car list))(map func (cdr list)))]))

(map  add_1  '(1 2 3))

;(2 3 4)

(map  add_1  '(1 2 3 4 5 6 7))

;(2 3 4 5 6 7 8)

(map subtract_10 '(11 13 12 14))

;(1 3 2 4)

(map subtract_10 '(11 13 12 14))

;(1 3 2 4)
