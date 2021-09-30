; из двух линейных списков одинаковой длины A, B получить новый список C, в котором Ci = (Ai Bi)

(defun mergeAtIndex(Li1 Li2)
    (if (null Li1) Nil (cons (cons (car Li1) (cons (car Li2) Nil)) (mergeAtIndex (cdr Li1) (cdr Li2)) ))
)

(print (mergeAtIndex '(a b c) '(1 2 3)))