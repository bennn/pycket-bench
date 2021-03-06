;
(declare (not safe))

; Specialize fixnum and flonum arithmetic.

(def-macro (FLOATvector-const . lst)   `',(list->f64vector lst))
(def-macro (FLOATvector? x)            `(f64vector? ,x))
(def-macro (FLOATvector . lst)         `(f64vector ,@lst))
(def-macro (FLOATmake-vector n . init) `(make-f64vector ,n ,@init))
(def-macro (FLOATvector-ref v i)       `(f64vector-ref ,v ,i))
(def-macro (FLOATvector-set! v i x)    `(f64vector-set! ,v ,i ,x))
(def-macro (FLOATvector-length v)      `(f64vector-length ,v))

(def-macro (nuc-const . lst)
  `',(list->vector
       (map (lambda (x)
              (if (vector? x)
                (list->f64vector (vector->list x))
                x))
            lst)))

(def-macro (FLOAT+ . lst) `(fl+ ,@lst))
(def-macro (FLOAT- . lst) `(fl- ,@lst))
(def-macro (FLOAT* . lst) `(fl* ,@lst))
(def-macro (FLOAT/ . lst) `(fl/ ,@lst))
(def-macro (FLOAT= . lst)  `(fl= ,@lst))
(def-macro (FLOAT< . lst)  `(fl< ,@lst))
(def-macro (FLOAT<= . lst) `(fl<= ,@lst))
(def-macro (FLOAT> . lst)  `(fl> ,@lst))
(def-macro (FLOAT>= . lst) `(fl>= ,@lst))
(def-macro (FLOATnegative? . lst) `(flnegative? ,@lst))
(def-macro (FLOATpositive? . lst) `(flpositive? ,@lst))
(def-macro (FLOATzero? . lst)     `(flzero? ,@lst))
(def-macro (FLOATabs . lst) `(flabs ,@lst))
(def-macro (FLOATsin . lst) `(flsin ,@lst))
(def-macro (FLOATcos . lst) `(flcos ,@lst))
(def-macro (FLOATatan . lst) `(flatan ,@lst))
(def-macro (FLOATsqrt . lst) `(flsqrt ,@lst))
(def-macro (FLOATmin . lst) `(flmin ,@lst))
(def-macro (FLOATmax . lst) `(flmax ,@lst))
(def-macro (FLOATround . lst) `(flround ,@lst))
(def-macro (FLOATinexact->exact . lst) `(inexact->exact ,@lst))

(define (GENERIC+ x y) (+ x y))
(define (GENERIC- x y) (- x y))
(define (GENERIC* x y) (* x y))
(define (GENERIC/ x y) (/ x y))
(define (GENERICquotient x y) (quotient x y))
(define (GENERICremainder x y) (remainder x y))
(define (GENERICmodulo x y) (modulo x y))
(define (GENERIC= x y) (= x y))
(define (GENERIC< x y) (< x y))
(define (GENERIC<= x y) (<= x y))
(define (GENERIC> x y) (> x y))
(define (GENERIC>= x y) (>= x y))
(define (GENERICexpt x y) (expt x y))

(def-macro (+ . lst) `(fxwrap+ ,@lst))
(def-macro (- . lst) `(fxwrap- ,@lst))
(def-macro (* . lst) `(fxwrap* ,@lst))
(def-macro (quotient . lst) `(fxwrapquotient ,@lst))
(def-macro (modulo . lst) `(fxmodulo ,@lst))
(def-macro (remainder . lst) `(fxremainder ,@lst))
(def-macro (= . lst)  `(fx= ,@lst))
(def-macro (< . lst)  `(fx< ,@lst))
(def-macro (<= . lst) `(fx<= ,@lst))
(def-macro (> . lst)  `(fx> ,@lst))
(def-macro (>= . lst) `(fx>= ,@lst))
(def-macro (negative? . lst) `(fxnegative? ,@lst))
(def-macro (positive? . lst) `(fxpositive? ,@lst))
(def-macro (zero? . lst) `(fxzero? ,@lst))
(def-macro (odd? . lst) `(fxodd? ,@lst))
(def-macro (even? . lst) `(fxeven? ,@lst))
(def-macro (bitwise-or . lst) `(fxior ,@lst))
(def-macro (bitwise-and . lst) `(fxand ,@lst))
(def-macro (bitwise-not . lst) `(fxnot ,@lst))

