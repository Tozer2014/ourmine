(load "lib/loaddeps")
(load "utils/utils")
(load "d-data/mushroom")
(defparameter mushtable (mushroom))

(defun new-random-center (table &optional (num-needed 1))
  (let ((newclusters nil) (num-fields (length (table-all table))))
    (dotimes (n num-needed newclusters)
      (setf newclusters (append (list (nth (random num-fields) (table-all table))) newclusters))
    )
  )
)

(defun fetch-generation (table gen-size generation)
  (let ((start (* gen-size generation)) (end (* gen-size (+ 1 generation))) (subset nil))
    (loop for n from start to end do
      (setf subset (append (list (nth n (table-all table))) subset))
    )
    subset
  )
)

(defun closest-center (centers new-point)
  (let ((distances (make-list (length centers) :initial-element 0)))
    (dotimes (i (length centers))
      (dotimes (j (length (eg-features new-point)))
        (if (numericp (nth j (eg-features new-point)))
          (setf 
            (nth i distances) 
            (+ 
              (nth i distances) 
              (sqrt (expt (- (nth j (eg-features new-point)) (nth j (eg-features (nth i centers)))) 2))     
            )
          )
          (if (not (equalp (nth j (eg-features new-point)) (nth j (eg-features (nth i centers)))))
            (incf (nth i distances))
          )
        )
      )
    )
    (let ((shortest-dist nil) (shortest-pos nil))
      (dotimes (k (length distances))
        (if (or (null shortest-dist) (< (nth k distances) shortest-dist))
          (setf shortest-dist (nth k distances) shortest-pos k)
        )
      )
      shortest-pos
    )
  )
)

(defun move-center (existing-center new-point weight)
  (let ((existing-features (copy-list (eg-features existing-center))) (new-features (eg-features new-point)))
    (dotimes (i (length existing-features))
      (let ((col-val-old (nth i existing-features)) (col-val-new (nth i new-features)))
        (if (numericp col-val-old)
          (setf
            (nth i existing-features)
            (/ (+ (* weight col-val-old) col-val-new) (+ weight 1))
          )
          (if (and (not (equalp col-val-old col-val-new)) (equalp weight 1))
            (setf (nth i existing-features) col-val-new)
          )
        )
      )
    )
  )
)

(defun cull-centers (centers weights)
  centers
)
