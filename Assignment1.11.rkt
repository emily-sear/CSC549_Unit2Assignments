;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Assignment1.11) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; recursive process
(define (function n)
  (if (< n 3) n
      (+ (function (- n 1)) (* 2 (function (- n 2))) (* 3 (function (- 3 n))))))

; iterative process
