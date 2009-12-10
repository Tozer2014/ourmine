(defun get-distant-eg (tbl one)
  (let ((mostdistant one)
        (dist most-negative-fixnum))
    (dolist (eg (table-all tbl) mostdistant)
      (let ((tempdist (eg-distance (eg-features eg) (eg-features one))))
        (when (> tempdist dist)
          (setf mostdistant eg)
          (setf dist tempdist))))))

(defun get-distant-egs (tbl)
  (let ((eg-edge (get-distant-eg tbl (any (table-all tbl)))))
    (cons (get-distant-eg tbl eg-edge) (cons eg-edge nil))))

(defun get-max-heuristic-distance (tbl)
  (let ((distant-egs (get-distant-egs tbl)))
    (eg-distance (first distant-egs) (second distant-egs))))

(defun toss-out (tbl clusters &key (threshold .25))
  (let ((threshold-distance (* threshold (get-max-heuristic-distance tbl)))
        (toss-out-list))
    (dolist (eg (table-all tbl) tbl)
      (when (> (eg-distance eg (closest-cluster (eg-features eg) clusters))
               threshold-distance)
        (push eg toss-out-list)))
    (setf (table-all tbl) (remove-if (lambda (x)
                                       (member x toss-out-list))
                                     (table-all tbl)))
    tbl))

(defun remove-columns (tbl columns)
  (let ((column-indices))
    (dolist (col columns tbl)
      (when (member col (table-columns tbl) :test #'column=)
        (push (column-index col tbl) column-indices)))
    (setf column-indices (sort (copy-list column-indices) #'>))
    (setf (table-columns tbl) (remove-if (lambda (x)
                                           (member x columns :test #'column=))
                                         (table-columns tbl)))
    (dolist (index column-indices tbl)
      (decf (table-class tbl))
      (dolist (eg (table-all tbl) tbl)
        (setf (eg-features eg) (remove (nth index (eg-features eg))
                                       (eg-features eg)
                                       :count 1 :from-end t :test #'equal))))))
