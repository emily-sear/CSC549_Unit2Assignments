;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Assignment1.23) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond
    ((> (square test-divisor) n) n)
    ((divides? test-divisor n) test-divisor)
    (else (find-divisor n (next test-divisor)))))

(define (square x)
  (* x x))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (next input)
  (if (= input 2) 3
      (+ input 2)))

(define (timed-prime-test n)
 (list (display n)
  (start-prime-test n (runtime))))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime(- (runtime) start-time))))

(define (report-prime elapsed-time)
 (list (display " *** ")
  (display elapsed-time)))

; three smallest primes closest to 1000
(timed-prime-test 1009)
(timed-prime-test 1013)
(timed-prime-test 1019)