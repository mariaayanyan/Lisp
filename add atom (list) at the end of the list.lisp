; добавить атом в конец списка
(defun concatAtom(Li A)
    (if (null Li) (cons A Nil) (cons (car Li) (concatAtom (cdr Li) A) ) )
)

(print (concatAtom '(1 2 3 4 5) 6))

; соединить списки
(defun concatLists(Li1 Li2)
    (if (null Li2) Li1 (concatLists (concatAtom Li1 (car Li2) ) (cdr Li2) ))
)

(print (concatLists '(1 2 3) '(4 5 6) ) )