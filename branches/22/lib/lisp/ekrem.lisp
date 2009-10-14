(defun test-data ()
  (data
   :name 'test
   :columns '($number1 symbol $number2 stuff)
   :egs '((0 TRUE 0 true)
          (0 False 0 true)
          (0 true 0 false)
          (0 false 0 false)
          (1 true 1 true)
          (1 false 1 false)
          (1 true 1 false)
          (1 false 1 true))))

(defun ekrem-c ()
  (let ((tbl (xindex (test-data)))
        (rows '())
        (art-medians '()))
    (dolist (row (table-all tbl))
      (push (eg-features row) rows))
    ;while loop
    (dolist (row rows)
      (let* ((best-distance (close-node row (cdr rows) (table-columns tbl))))
        (dotimes (i (length (cdr rows)))
          (when (= best-distance (euc-distance row (nth i rows) (table-columns tbl))) ))))))
             ; (let ((best-node (nth i rows))) )))))))
                ;(push (make-median row best-node (table-columns tbl)))
                ;(delete row rows)
                ;(delete best-node rows))))))))
                ;recreate rows with the median values
                ;create branches in the bst till a root exists and exit while
       ;return a certain median value
         
(defun close-node (row egs columns)
  (if (= (length egs) 1)
      (euc-distance (row (car egs) columns))
      (progn
        (if (< (euc-distance row (car egs) columns) (close-node row (cdr egs) columns))
            (euc-distance row (car egs) columns)))))
              
            
(defun euc-distance (node1 node2 columns)
  (let ((n 0)
        (distance 0))
    (dolist (col columns)
      (if (numericp (header-name col))
          (progn
            (if (numberp (nth n node1))
                (progn
                  (if (numberp (nth n node2))
                      (incf distance (square (- (nth n node1) (nth n node2))))
                      (incf distance (square (nth n node1)))))
                (if (numberp (nth n node2))
                    (incf distance (square (nth n node2))))))
      (progn
        (if (samep (nth n node1) (nth n node2))
            '(nothing)
            (incf distance))))
      (incf n))
    (sqrt distance)))
