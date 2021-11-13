; найти максимум списка

(defun ListMax(Li)
    (if (null Li) 0
        (if (Listp (car Li)) (max (ListMax (car Li)) (ListMax (cdr Li)) ) 
            (max (car Li) (ListMax (cdr Li)) ) )
     ))

(print (ListMax '((1 4 2) (5 (6 7)))) )