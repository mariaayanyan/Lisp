; добавить атом в конец списка
(defun concatAtom(Li A)
    (if (null Li) (cons A Nil) (cons (car Li) (concatAtom (cdr Li) A) ) )
)

; развернуть список
(defun reverseList(Li)
    (if (null Li) Li (concatAtom (reverseList (cdr Li) ) (car Li) ) )
)

(print (reverseList '(1 2 3 4 5 6) ) )