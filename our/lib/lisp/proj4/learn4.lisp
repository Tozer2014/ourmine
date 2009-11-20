
(defun remove-falses(train)
  (let* ((data (table-egs-to-lists train))
         (temp)
         (truths '())
         (class-col (table-class train)))
    (dotimes (n (length data) (make-simple-table (table-name train) (table-columns train) truths))
      (setf temp (nth n data))
      (if (eq (nth class-col temp) 'true)
          (setf truths (append (list temp) truths))))))

(defparameter shared-lst (list (xindex (remove-falses (shared_pc1))) (xindex (remove-falses (shared_kc1)))
			       (xindex (remove-falses (shared_kc2))) (xindex (remove-falses (shared_kc3)))
			       (xindex (remove-falses (shared_cm1))) (xindex (remove-falses (shared_mw1)))
			       (xindex (remove-falses  (shared_mc2)))))
(defparameter prepared-data '())


(defun merge-data (&optional (nr-attributes 5))
  (let* ((sh_pc1 (xindex (shared_pc1)))
	 (sh_kc1 (xindex (shared_kc1)))
	 (sh_kc2 (xindex (shared_kc2)))
	 (sh_kc3 (xindex (shared_kc3)))
	 (sh_cm1 (xindex (shared_cm1)))
	 (sh_mw1 (xindex (shared_mw1)))
	 (sh_mc2 (xindex (shared_mc2)))
	 (lst (list sh_pc1 sh_kc1 sh_kc2 sh_kc3 sh_cm1 sh_mw1 sh_mc2))
	 (all-tbl (xindex (remove-falses (append-tables lst)))))
   (score-tbl-bsquare all-tbl nr-attributes)))


(defun prepare-datasets-bsquare (&optional (num-attrs))
  (let* ((lst-out)
	 (indexes (merge-data num-attrs)))
  (dolist (l shared-lst lst-out)
    (setf lst-out (append lst-out (list (xindex  (make-bsquare-table l indexes))))))))

(defun make-bsquare-table (tbl indexes)
  (bsquare-table tbl indexes))

(defun randomize (lst &optional (b 5))
  (let* ((all-tbl))
    (dolist (l lst all-tbl)
      (setf all-tbl (append all-tbl (split2bin-tables l b))))))

(defun k-means-all-tables (lst &optional (k 2))
  (let ((all-tables))
    (dolist (tbl lst all-tables)
      (let ((lst-clusters (k-means tbl k))) 
       (setf all-tables  (append all-tables (list (car (sort lst-clusters #'> :key #'length)))))))
       (make-cluster-tables all-tables (car lst))))

(defun build-datas (&optional (ks) (bins 5) (num-attrs 5))
  (let* ((all-tables))
    (dolist (k ks all-tables)
      (setf all-tables (append all-tables 
			       (k-means-all-tables 
				(randomize 
				 (prepare-datasets-bsquare num-attrs) bins) k))))))

(defun set-data ()
  (setf prepared-data (build-datas '(5))))

(defun build-new-bp (bp atable current-rules test)
  ;(format t "car of bp is: ~a ~%" (car bp)) 
    (if (not (score-rules (car bp) current-rules test))
	(let* ((table-lst (list atable (cadr bp)))
	       (newtable (append-tables table-lst))
	       (newbp (list (get-rules-for-true newtable) newtable)))
	  (if (not (score-rules (car newbp) current-rules test))
	      (return-from build-new-bp (list (get-rules-for-true atable) atable)) 
	      (return-from build-new-bp newbp)))
	(return-from build-new-bp bp)))
	
	
	   
(defun score-rules (bpr r1 test)
  ;(format t "~A~%" bpr)
  (let* ((score-Bpr (prism-classify-final bpr test))
	 (score-r1  (prism-classify-final r1 test)))
    ;(if (= score-Bpr score-r1) (format t "~a ~a ~%" "Equal scores" score-Bpr)
    ;	(if (< score-Bpr score-r1 ) (format t "~a ~a ~%" "R set is better" score-r1)
    ;	    (format t "~a ~a ~% " "Back pocket is better" score-Bpr)))
    (if (= score-Bpr score-r1)  
	 nil
      (if (< score-Bpr score-r1) 
	  nil
             t))))
	  
(defun run-all-exp (&optional (top-iterations 1) (bottom-iterations 1))
  (let ((bp))
    (dotimes (i top-iterations (car bp))
      (let* ((all (traintest-pdata))
	     (train (car (cdr all)))
	     (test (car all)))
	(setf bp (run-exp train test bottom-iterations bp))))))
    
(defun run-exp (train test iterations &optional (bp))
  (let ((acc 0))
    (dotimes (i iterations)
      (dolist (train-tbl train)
	;(format t "~a ~a ~a ~a ~a ~%" "Data set " acc ": Back pocket rules: Itr " i (car bp))
	(incf acc)
	(if (= (length bp) 0)
	    (setf bp (list (get-rules-for-true train-tbl) train-tbl))	    
	    (setf bp (build-new-bp bp train-tbl (get-rules-for-true train-tbl) test)))))
    bp))
