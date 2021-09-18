; gnu clisp  2.49.60
; eq
; eql
; equal - compares types and values
; equalP - compares values
; use equalp for list comparison

; Null - compares to Nil
; ATOM - check if not list
; NumberP - check if a number

 (print (equal 2 2.0)) ; nil
 (print (equalp 2 2.0)) ; T
 (print (atom '(1 2))) ; nil
