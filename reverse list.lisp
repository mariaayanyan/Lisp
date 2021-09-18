; развернуть список
(defun reverseList(Li)
    (if (null Li) Li (cons (car Li) (reverseList (cdr Li) ) ) )
)

(print (reverse '(1 2 3 4 5 6) ) )
