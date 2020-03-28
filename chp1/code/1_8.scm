; 定义立方根近似函数
(define (improve x y)
    (/ (+ (/ y (* x x)) (* 2 x)) 
        3)
    )


(define (cube-root x)
    (cube-root-iter 1.0 x))

(define (cube x)
    (* x x x))

(define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.001))

(define (cube-root-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-root-iter (improve guess x) x)
    )
)

(define (cube x)
    (* x x x)
)

(cube-root (cube 3))
(cube-root (cube 4))
(cube-root (cube 25))

