(defun make-rule (tbl class)
  (let* ((rule)
         (classi (table-class tbl))
         (all-freq (get-all-attributes-class-freq tbl class))
         (greatest (select-greatest-freq all-freq))
         (attr (car greatest))
         (value (second  greatest))
         (new-table (data :name (table-name tbl)
                          :columns (get-col-names (table-columns tbl))
                          :egs (get-instances attr value tbl))))
    (setf rule (list (append rule (list attr value))))
    (if (= (precision (get-instances attr value tbl) classi class) 1)
        rule
        (setf rule (append  rule (make-rule (xindex new-table) class))))))
         
  

(defun get-all-attributes-class-freq (tbl class)
  (let* ((lst)
         (classi (table-class tbl))
         (columns (table-columns tbl)))
    (dotimes (n  (length columns))
      (unless (= n classi)
      (setf lst (append lst (get-attribute-class-freq tbl n class)))))
    lst))


(defun get-attribute-class-freq(tbl attr class)
  (let* ((lst)
         (classes (klasses tbl))
         (columns (table-columns tbl))
         (attr-values (discrete-uniques (nth attr columns))))
    (dolist (val attr-values)
      (let* ((occur 0))
             (dolist (cls classes)
               (incf occur (f tbl cls attr val)))
             (setf occur (float ( / (f tbl class attr val) occur)))
             (setf lst (append lst (list (list attr val occur))))))
    (reverse lst)))

(defun select-greatest-freq (lst-freq)
  ;(format t "~A~%" lst-freq)
       (let* ((greatest (car (last (car lst-freq))))
              (greatest-attr (car lst-freq))
              (rest (reverse (cdr lst-freq))))
         (dolist (obj rest greatest-attr)
           (if (< greatest (car (last obj)))
                ; (format t "~A~%" obj)
                 (setf greatest-attr obj)))))

(defun get-instances (attr value tbl)
  (let* ((all-instances (get-features (table-all tbl)))
         (instances))
    (dolist (inst all-instances instances)
      (if (equal (nth attr inst) value)
          (setf instances (append instances (list inst)))))))

(defun precision (instances i  class)
  (let ((prec 0)
        (len (length instances)))
    (dolist (obj instances)
      (if (equal (nth i obj) class)
          (incf prec)))
    (float (/ prec len))))

    

         
(defun make-data-lenses ()
  (data
   :name   'weather
   :columns '(age spectacle atigmatism tear lenses)
   :egs    '((young myope no reduced none)
             (young myope no normal soft)
             (young myope yes reduced none)
             (young myope yes normal hard)
             (young hypermetrope no reduced none)
             (young hypermetrope no normal soft)
             (young hypermetrope yes reduced none)
             (young hypermetrope yes normal hard)
             (pre-presbyopic myope no reduced none)
             (pre-presbyopic myope no normal soft)
             (pre-presbyopic myope yes reduced none)
             (pre-presbyopic myope yes normal hard)
             (pre-presbyopic hypermetrope no reduced none)
             (pre-presbyopic hypermetrope no normal soft)
             (pre-presbyopic hypermetrope yes reduced none)
             (pre-presbyopic hypermetrope yes normal none)
             (presbyopic myope no reduced none)
             (presbyopic myope no normal none)
             (presbyopic myope yes reduced none)
             (presbyopic myope yes normal hard)
             (presbyopic hypermetrope no reduced none)
             (presbyopic hypermetrope no normal soft)
             (presbyopic hypermetrope yes reduced none)
             (presbyopic hypermetrope yes normal none))))
