; найти максимум списка
(defun listMax(Li)
    (if (null (cdr Li) ) (car Li) (max (car Li) (listMax (cdr Li) ) ) )
)

(print (listMax '(1 4 1 2 7 6) ) )