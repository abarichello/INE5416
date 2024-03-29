;; (\x y z -> if x > y && x > z then x else if y > x && y > z then y else z)

(defun main ()
    (setq x (read))
    (setq y (read))
    (setq z (read))

    (write-line (write-to-string (
        (lambda (x y z)
            (cond
                ((and (> x y) (> x z)) x)
                ((and (> y x) (> y z)) y)
                (t z)
            )
        ) x y z
    )))
)

(main)
