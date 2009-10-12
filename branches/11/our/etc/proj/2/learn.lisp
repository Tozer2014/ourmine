(defun learn (&key (dataFile #'shared-kc1)
                   (dataFileArgs nil)
                   (prep #'numval1)
                   (dataSplitFunc #'bins)
                   (norm #'normalizedata)
                   ;(k            8)
                   (rowReducer   #'doNothing)
                   (discretizer  #'equal-width)
                   ;(cluster      #'(lambda (data) (kmeans k data))) 
                   ;(fss          #'b-squared)
                   (classify     #'nb))
    (let* ((dataSet (funcall dataFile))
           (dataSet (funcall prep dataSet))
           (dataSet (funcall norm dataSet))
           (dataSet (funcall discretizer dataSet)))
        (multiple-value-bind (train test) (funcall dataSplitFunc dataSet)
            (multiple-value-bind (trueClass falseClass) (funcall classify train test)
           (format t "prep, rowReducer, discretizer, classifier, class, ~Ta,~Tb,~Tc,~Td,~Tacc,~Tprec,~Tpd,~Tpf,~Tf,~Tg~%") 
           (format t "~a, ~a, ~a, ~a,~T~a,~T~a,~T~a,~T~a,~T~a,~T~a,~T~a,~T~a,~T~a,~T~a,~T~a~%" (parse-name prep) (parse-name rowReducer) (parse-name discretizer) (parse-name classify) 'TRUE (first trueClass) (second trueClass) (third trueClass) (fourth trueClass)
                   (acc (first trueClass)
                        (second trueClass)
                        (third trueClass)
                        (fourth trueClass))
                   (prec (first trueClass)
                         (second trueClass)
                         (third trueClass)
                         (fourth trueClass))
                   (pd (first trueClass)
                       (second trueClass)
                       (third trueClass)
                       (fourth trueClass))
                   (pf (first trueClass)
                       (second trueClass)
                       (third trueClass)
                       (fourth trueClass))
                   (f-calc (first trueClass)
                      (second trueClass)
                      (third trueClass)
                      (fourth trueClass))
                   (g (first trueClass)
                      (second trueClass)
                      (third trueClass)
                      (fourth trueClass)))
        (format t "~a, ~a, ~a, ~a,~T~a,~T~a,~T~a,~T~a,~T~a,~T~a,~T~a,~T~a,~T~a,~T~a,~T~a~%" 
            (parse-name prep) 
            (parse-name rowReducer)
            (parse-name discretizer) 
            (parse-name classify) 
             'FALSE 
            (first falseClass) 
            (second falseClass) 
            (third falseClass) 
            (fourth falseClass)
                   (acc (first falseClass)
                        (second falseClass)
                        (third falseClass)
                        (fourth falseClass))
                   (prec (first falseClass)
                         (second falseClass)
                         (third falseClass)
                         (fourth falseClass))
                   (pd (first falseClass)
                       (second falseClass)
                       (third falseClass)
                       (fourth falseClass))
                   (pf (first falseClass)
                       (second falseClass)
                       (third falseClass)
                       (fourth falseClass))
                   (f-calc (first falseClass)
                      (second falseClass)
                      (third falseClass)
                      (fourth falseClass))
                   (g (first falseClass)
                      (second falseClass)
                      (third falseClass)
                      (fourth falseClass))))))
    T)

(defun prec(a b c d)
  (/
   d
   (if (and
        (eql c 0)
        (eql d 0))
       (log 0.001)
       (+ c d))))

(defun acc(a b c d)
  (/
   (+ a d)
   (if (and
        (eql a 0)
        (eql b 0)
        (eql c 0)
        (eql d 0))
       (log 0.001)
       (+ a b c d))))

(defun pd(a b c d)
  (/
   d
   (if
    (and
     (eql b 0)
     (eql d 0))
    (log 0.0001)
    (+ b d))))

(defun pf (a b c d)
  (/
   c
   (if (and
        (eql a 0)
        (eql c 0))
       (log 0.001)
       (+ a c))))

(defun f-calc (a b c d)
  (/ (* 2 (prec a b c d) (acc a b c d)) (+ (prec a b c d) (acc a b c d))))

(defun g (a b c d)
  (/ (* 2 (pf a b c d) (pd a b c d)) (+ (pf a b c d) (pd a b c d))))


(defun parse-name (me)
    (let* ((name (format nil "~A" me)) 
           (start 0)
           (end  (position #\) name :from-end t))
           (start (position #\Space (subseq name 0 end) :from-end t)))
        (when (not end) (setf end (position #\> name :from-end t)))
        (subseq name (+ start 1) end)
    )
)

(defun test-parse (&key (discretizer  #'equal-width))
    (parse-name discretizer)
)