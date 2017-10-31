#lang racket
; F*ck lisp - Franco 2017

; Define the functions power-head and power-tail. The functions much calculate the power of the given number. The difference is that power-head should use head recursion and power-tail should use tail recursion.

(define (power-head x y)
	(cond
		[(= y 0) 1]
		[(= y 1) x]
		[else (* x (power-head x (- y 1)))]
		))

(define (power-tail x y)
	(power-tail-temp x y 1))

(define (power-tail-temp x y result)
	(cond
		[(= y 0) result]
		[else (power-tail-temp x (- y 1) (* x result))]
		))

; Define the function third which returns the third element of a list.

(define (third list)
	(car (cdr (cdr list))))

; Define function just-two? Which returns true if a list contains only two elements

(define (just-two list)
	(number-elements? list 2))


(define (number-elements? list counter)
	(cond
		[(and (= counter 2) (empty list)) (true)]
		[(< counter 2) (number-elements? list (+ counter 1))]
		[else false]))

; Define the function how-many-x? that receives a list and should return the number of elements that match x

(define (how-many-x list x counter)
	(cond
		[(empty list) (counter)]
		[(= (car list) x) (how-many-x (cdr list) (+ counter 1))]
		[else (how-many-x (cdr list) (counter))]))

; Define the function all-x? that returns true if every element of the list is x

(define (all-x list x)
	(cond
		[(empty? list) true]
		[(not (= (car list) x)) false]
		[else (all-x (cdr list) x)]))

; Define the function get which receives a list and a position and returns the value in that position of the list.

(define (get list x)
	(cond
		[(empty? list) -1]
		[(= x 1) (car list)]
		[else (get (cdr list) (- x 1))]))

; Define the function difference that receives 2 lists A and B. The function must return a new list that contains the elements in A that re not present in B. E.g.:

(define (contains? x list)
	(cond
		[(empty? list) false]
		[(eq? (car list) x) true]
		[else (contains x (cdr list))]))

(define (difference listA listB)
	(cond
		[(empty? listA) '()]
		[(not(contains? (car listA) listB))
		 (cons (car listA)
					 (difference (cdr listA) listB))]
		[else
			(difference (cdr listA) listB)]))

; Define the function append that receives 2 lists A and B. The function return only 1 list with the elements of A followed by the elements of B.

(define (append list1 list2)
	(cond
		[(and (empty? list1)(empty? list2)) '()]
		[(empty? list1) list2]
		[(empty? list2) list1]
		[(not(empty? list1))
		 (cons (car list1)(append (cdr list1) list2))]
		[(not(empty? list2))
		 (cons (car list2)(append list1 (cdr list2)))]))

; Define the function invert which inverts the order of the elements in a list

(define (get-length list)
    (cond
      [(empty? list) 0]
      [else (+ 1 (get-length (cdr list)))]))

(define (get-invert list n)
    (cond
      ((= n 0) '())
      (else (cons (get list n)
            (get-invert list (- n 1))))))

(define (invert list)
    (cond
      [(= (len list) 0) '()]
      [else (get-invert list (get-length list))]))

; Define the function sign that receives a list of numbers and returns a list of 1 or -1 depending on whether each number is greater or lesser than 0.

(define (sign list)
    (cond
      [(empty? list) '()]
      [(< (car list) 0)
       (cons -1 (sign (cdr list)))]
      [(>= (car list1) 0)
       (cons 1 (sign (cdr list)))]))

; Define the function negatives that receives a list of positive numbers and returns a list with the corresponding negative numbers.

(define (negatives list)
    (cond
      [(empty? list) '()]
      [(< (car list) 0)
       (cons (car list)(negatives (cdr list)))]
      [(>= (car list) 0)
       (cons (* -1 (car list))(negatives(cdr list)))]))

