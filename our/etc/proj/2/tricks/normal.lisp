(defstruct normal 
  (max (* -1 most-positive-single-float))
  (min       most-positive-single-float)
  (n 0)
  (sum 0)
  (sumSq 0))

(defstruct (bin (:include normal)) name)

(defmethod add ((n normal) x)
  (incf (normal-n     n) 1)
  (incf (normal-sum   n) x)
  (incf (normal-sumSq n) (square x))
  (setf (normal-max   n) (max (normal-max n) x))
  (setf (normal-min   n) (min (normal-min n) x))
  x)

(defmethod mean ((n normal))
  (/  (normal-sum n) (normal-n n)))

(defmethod stdev ((n normal))
  (let ((sum   (normal-sum n)) 
	(sumSq (normal-sumSq n))
	(n     (normal-n n)))
    (sqrt (/ (- sumSq(/ (square sum) n)) (- n 1)))))

(defmethod pdf ((n normal) x)
  (let ((mu     (mean n))
	(sigma  (stdev n)))
    (* (/ (* (sqrt (* 2 pi)) sigma))
       (exp (* (- (/ (* 2 (square sigma)))) (square (- x mu)))))))

(defmethod normalize ((n normal) x)
  (let ((normalized 0))
    (setf normalized (/ (- x (normal-min n)) (- (normal-max n) (normal-min n))))
    normalized))

(deftest test-normal ()
  (let ((n (make-normal)))
    (dolist (x '( 1 2 3 4 5 4 3 2 1))
      (add n x))
    (check 
      (samep n "#S(NORMAL :MAX 5 :MIN 1 :N 9 :SUM 25 :SUMSQ 85)")
      (equal (mean n) (/ 25 9))
      (equal (stdev n) 1.3944334)
      (samep (format nil "~10,9f" (pdf n 5))  ".080357649")
    )))
