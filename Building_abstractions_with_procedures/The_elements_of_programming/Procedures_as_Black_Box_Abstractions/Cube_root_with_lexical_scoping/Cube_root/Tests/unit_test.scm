(import test)

(include "../Sources/cube_root.scm")

(test-group "'Cube root' tests"
    (test-assert (< (abs (- (cube_root (- 27)) (- 3))) 0.000000014))
    (test-assert (< (abs (- (cube_root (- 1)) (- 1))) 0.0000145))
    (test-assert (< (abs (- (cube_root (- 0.1)) (- 0.46))) 0.0145))
    (test 0 (cube_root 0))
    (test-assert (< (abs (- (cube_root 0.008) 0.2)) 0.0000145))
    (test-assert (< (abs (- (cube_root 1) 1)) 0.0000145))
    (test-assert (< (abs (- (cube_root 2) 1.26)) 0.014)))

(test-exit)
