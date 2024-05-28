(defun max-prime (n)
  (let ((n n)
        (max-factor 0))
    (loop for i from 3 upto (sqrt n) by 2
          do (loop while (eq 0 (rem n i))
                   do (setf n (/ n i)
                            max-factor i))
          finally (return (if (> n 1) n max-factor)))))

(format T "Largest prime factor: ~S~%"
        (max-prime 600851475143))
