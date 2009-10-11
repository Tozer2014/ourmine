;; Euclidean distance between two vectors passed as lists
;;(defun l2dist (features1 features2) ; assumes numeric values in features*
;;;  (let ((s (parops #'- features1 features2)))    ; elementwise subtraction
;;  (let ((s (mapcar #'- features1 features2)))
;;    (unless (null s)
;;      (sqrt (reduce #'+ (mapcar #'square s)))))) ; L2 distance

;; iplements element-wise arithmetic operations on two lists
;; my want to do reverse at the end
;;(defun parops (fn list1 list2)
;;  (let ((s nil)
;;        (n (length list1))
;;        (n2 (length list2)))
;;    (unless (/= n n2)
;;      (dotimes (i n s)
;;        (push (funcall fn (nth i list1) (nth i list2)) s)))))

;;(deftest test-parops ()
;;  (samep (parops #'- '(4 3) '(2 1)) '(2 2)))
;;(deftest test-l2()
;;  (equal (l2dist '(1 2) '(3 4)) 2.828427)) 

;;(load "data/ar5")

(defun bestk (tbl)
  (xindex tbl)
  (let ((n (f tbl))     ; number of instances
        (samples nil)   ; random sampling
        (gs nil))
    (dotimes (i 20 samples)  			; select 20 instances
      (push (my-random-int n) samples))
    (dotimes (k (- n 1) gs)		; evaluate performance for different k
      (push (knn-eval samples tbl (+ k 1)) gs)) 
    ;; return the k-value which gave the best (max) performance
    (- n 1 (position (reduce #'max gs) gs))))	; gs is reversed

;; finds the k nearest neighbors for the instance in the egs list
;;(defun knn (instance egs k)
;;  (let ((neighbors nil)
;;	(dists nil))
;;    (doitems (item pos egs dists)	; measure distances
;;      (push (list pos (l2dist instance item)) dists))
;;    (setf dists (subseq (sort (copy-list dists) #'< :key #'second) 0 k))
;;    (dolist (i dists neighbors)
;;      (push (car i) neighbors))))
    
(defun euclid-distance (instance1 instance2 tbl)
  (sqrt (reduce #'+
                (mapcar #'(lambda (el1 el2 column)
                          (if (and (numericp column)
                                   (not (equalp column (header-name (table-class-header tbl)))))
                              (expt (- el2 el1) 2)
                              0))
                        (eg-features instance1)
                        (eg-features instance2)
                        (mapcar #'header-name (table-columns tbl))))))

(deftest euclid-distance-test ()
  (check
    (and
      (equalp (euclid-distance (first (egs (ar3))) (first (egs (ar3))) (ar3)) 0)
      (equalp (euclid-distance (first (egs (ar3))) (second (egs (ar3))) (ar3)) 198331.9)))) 

(defun knn (instance tbl k)
  (setf tbl (table-deep-copy tbl))
  (let ((neighbors nil)
        (distances nil))
    (doitems (eg i (egs tbl))
      (push (list i (euclid-distance instance eg tbl)) distances))
    (setf distances (nreverse distances))
    (setf distances (subseq (sort (copy-list distances) #'< :key #'second) 0 k))
    (dolist (d distances)
      (push (nth (car d) (egs tbl)) neighbors))
    (nreverse neighbors)))

(deftest knn-test ()
  (check
    (and
      (equalp (car (knn (car (egs (ar3))) (ar3) 1)) (car (egs (ar3))))
      (equalp (length (knn (car (egs (ar3))) (ar3) 10)) 10))))

(defun knn-eval (samples tbl k)
  (let ((gs 0))
    (dotimes (i k gs)
      (setf gs (+ gs (reduce #'+ samples))))))

