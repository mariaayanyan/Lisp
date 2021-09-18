;gnu clisp  2.49.60
; quote -   '(A B C) = (A B C)
; CAR - list head (CAR '(A B C)) = A
; CDR - list tail (CDR '(A B C)) = (B C)
; cons - connect head and tail    (cons 'A '(B C)) = (A B C)

(defun listLen(A)
    (if(not (car A)) 0
       (+ 1 (listLen (cdr A) ) )
       )
    )

(print (listLen '(1 2 3 4 5)))

(defun listSum(A)
        (if(null (car A)) 0
           (+ (car A) (listSum (cdr A)))
           )
)


(print (listSum '(1 2 3)))