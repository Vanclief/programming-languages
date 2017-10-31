

;; my sum function
(define (sum v b) (+ v b) 2 9)

;; my true lamda version
(define add (lambda (x)
              (lambda (y) (+ x y))))


;; my square
(define (sqr x) (* x x))

;; my square with lambda
(define square (lambda (x) (* x x)))

;; condition
(define (test_cond a b)
  (cond
  [(> a b)a]
  [else b]))

;; area of circle
(define circle (lambda (p)
                  (lambda (r) (* p r r))))

((add 3.14) 4)


