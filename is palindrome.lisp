(defun reverse_list(Li)
    (if (null Li) nil
        (append (reverse_list (cdr Li) ) (cons (car Li) nil)  )
     ))

(defun is_palindrome(Li)(equalp Li (reverse_list Li) ))

;(print (is_palindrome '(1 2 3 2 1)))