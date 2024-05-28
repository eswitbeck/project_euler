(defun palindromep (n)
  (let* ((s (write-to-string n))
         (len (length s)))
    (loop for i from 0 below (/ len 2)
          always (equal (aref s i) (aref s (- len i 1))))))

(format T "Largest Palindrome Product: ~S~%"
  (let ((max-pal 0))
    (loop for i from 100 upto 999
         do (loop for j from i upto 999
              do (let ((test-num (* i j)))
                (when (and (palindromep test-num) (> test-num max-pal))
                  (setf max-pal test-num)))))
    max-pal))
