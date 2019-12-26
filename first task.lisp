(defconstant L (list 1 2 3 6 5 7 9 8))


; Функция вставки
(defun IN (A N LST)
   (cond ((NULL LST) (cons A LST))
      ((eq N 1) (cons A LST))
      (T (cons (car LST)
            (IN A (- N 1)
               (CDR LST))))))
                            
; Функция удаления
(defun DEL (N LST)
   (COND ((EQ N 1) (CDR LST))
      (T (CONS (CAR LST)
            (DEL (- N 1) (CDR LST))))))
            
; Функция поиска
(defun SCH (N list)
                   (cond((eq list nil) "Элемент не найден")
                        ((eq (car list) N) "Элемент найден")
                        (t (SCH N (cdr list)))))
                        
; Печать списка                        
(print "Список:")(print L)

(print "Вставка числа 23 на 5-е место")
(set 'spis (IN 23 3 L))
(print spis)

(print "Удаление из списка 3 числа)")
(set 'spis (DEL 4 L))
(print spis)

(print "Поиск элемента по значению")
(print "Значение 2")
(print (SCH 2 L))
(print "Значение 5")
(print (SCH 5 L))
