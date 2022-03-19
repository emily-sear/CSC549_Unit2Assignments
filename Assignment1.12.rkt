;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Assignment1.12) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Pascal's Triangle
(define (pascalHelper row element)
  (cond
    ((> element (+ row 1)) 0)
    ((and (= row 0) (= element 1)) 1)
    ((< element 0) 0)
    ((= element 0) 0)
    (else (+ (pascalHelper (- row 1) (- element 1)) (pascalHelper (- row 1) element)))))

(define (rowHelper row element)
  (cond
    ((> element (+ row 1)) '())
    (else (cons (pascalHelper row element) (rowHelper row (+ element 1))))))

(define (pascalsTriangle rows)
  (if (< rows 0) '()
      (list (pascalsTriangle (- rows 1)) (rowHelper rows 1))))

(pascalsTriangle 5)