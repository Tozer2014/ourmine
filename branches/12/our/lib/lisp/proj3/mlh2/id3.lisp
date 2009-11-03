
(defun build-id3 ()
  (let* ((train (xindex (car-data)))
        (lst-col-indexes (make-index-cols train)))
    (print-tree (id3 train lst-col-indexes) (table-columns train))))

(defun id3 (train lst-Attributes)
  (let* ((attrs (make-index-cols train))
         (info-gain)
         (tree-node)
         (attr-left lst-Attributes)
         (branch-attr))
    (dolist (att attrs)
      (unless (not (member att lst-Attributes))
        (setf info-gain (append info-gain (list (list att (gain train att)))))))
    ;(format t "~A~%" info-gain)
    (setf branch-attr (select-greatest-att info-gain))
    ;(format t "~A~%" branch-attr)
    (setf tree-node (list branch-attr))
    (setf attr-left (remove branch-attr attr-left))
    (if (= (length (klasses train)) 1)
        (setf tree-node (append tree-node (append tree-node (list (list "Root" (make-leaf-node train))))))
        (let* ((values (discrete-uniques (nth branch-attr (table-columns train)))))
          (dolist (vl values tree-node)
            (let* ((sub-set (xindex (get-instances branch-attr vl train))))
              (cond  ((not (table-all sub-set)) (setf tree-node (append tree-node (list (list vl (make-leaf-node train))))))
                     ((not attr-left) (setf tree-node (append tree-node (list (list vl (make-leaf-node train))))))
                     ((= (length (klasses sub-set)) 1) (setf tree-node (append tree-node (list (list vl (make-leaf-node sub-set))))))
                     (t (setf tree-node (append tree-node (list (list vl (id3 sub-set attr-left)))))))))))
        tree-node))


(defun make-leaf-node (table)
  (let* ((classes (klasses table))
         (win-class)
         (max-instances 0)
         (features (get-features (table-all table))))
    (if (= (length classes) 1)
        (setf win-class (car classes))
        (dolist (cls classes )
          (if (< max-instances (f table cls))
              (progn
                (setf win-class cls)
                (setf max-instances (f table cls))))))
    win-class))

(defun get-instances (attr value tbl)
  (let* ((all-instances (get-features (table-all tbl)))
         (instances))
    (dolist (inst all-instances)
      (if (equal (nth attr inst) value)
          (setf instances (append instances (list inst)))))
    (data :name (table-name tbl)
          :columns (get-col-names (table-columns tbl))
          :egs instances)))

(defun get-col-names (lst)
  (let* ((lst-cols))
    (dolist (obj lst (reverse lst-cols))
      (setf lst-cols (cons (header-name obj) lst-cols)))))

(defun get-name (index lst-cols)
  (header-name (nth index lst-cols)))

(defun make-index-cols (tbl)
  (let ((columns (length (table-columns tbl)))
        (col-indexes)
        (cls (table-class tbl)))
    (dotimes (x columns col-indexes)
      (unless (= x cls)
        (setf col-indexes (append col-indexes (list x)))))))

(defun select-greatest-att (lst)
  (let* ((greatest-gain (car (last (car lst))))
         (win (car (car lst))))
    (dolist (l lst win)
      (if (> (car (last  l))  greatest-gain)
          (progn
            (setf greatest-gain (car (last l)))
            (setf win (car l)))))))


(defun print-tree (tree tbl-cols &optional (depth 0))
  (tab2 depth)
  (format t "~A~%" (header-name (nth (first tree) tbl-cols)))
  (loop for subtree in (cdr tree) do
       (tab2 (+ depth 1))
       (format t "= ~A " (first subtree))
       (if (atom (second subtree))
           (format t "=> ~a~%" (second subtree))
           (progn (terpri) (print-tree (second subtree) tbl-cols  (+ depth 5))))))

(defun tab (n)
  (loop for i from 1 to n do (format t " ")))

(defun tab2 (n)
  (dotimes (i n)
    (if ( = (mod i 5) 0)
        (format t "~a " "|")
        (format t "~a " " "))))


(defun leaf? (lst)
  (if (not (atom (car (last lst))))
      nil t))

(defun print-rules ()
  (let* ((dataset (xindex (car-data)))
         (tree (id3 dataset (make-index-cols dataset)))
         (rules (make-rule tree)))
 (setf rules (make-names-rules rules))
 (dolist (r (reverse rules))
   (format t "~a~%" r))
 (format t "~a ~a~% " "Total number of rules " (length rules))))


(defun make-rule (lst)
  (let* ((prep-list)
         (root (car lst)))
    (dolist (l (cdr lst) prep-list)
      (if (leaf? l)
          (setf prep-list (append prep-list  (list (cons root l))))
          (setf prep-list (append prep-list  (make-rule-help root (make-rule l))))))))

(defun make-rule-help (val lst)
  (let ((new-list))
    (dolist (l lst new-list)
      (setf new-list (append new-list (list (cons  val l)))))))

(defun make-names-rules(lst)
  (let* ((cols (table-columns (xindex (car-data))))
         (new-lst))
    (dolist (r lst)
      (let ((new-inst))
        (doitems (one n r)
          ;(format t "~a " n)
          (if (oddp (mod n 6))
              (setf new-inst (append new-inst (list "=" one)))
              (if (= n (- (length r) 1))
                  (setf new-inst (append new-inst (list "Class =" one)))
                  (setf new-inst (append new-inst (list (header-name (nth one cols))))))))
          (setf new-lst (append new-lst (list new-inst)))))
    new-lst))
              
(defun find-col-name (index)
      (let* ((cols (table-columns (xindex (car-data))))
             (col (nth index cols)))
        (header-name col)))

   