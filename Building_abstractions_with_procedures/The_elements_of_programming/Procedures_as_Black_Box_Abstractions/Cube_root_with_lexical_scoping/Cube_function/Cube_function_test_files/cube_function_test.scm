(import test)

(include "../Cube_function_source_files/cube_function_implementation.scm")

(import cube_func)

(test-group "Cube function tests"
    (test 0 (cube 0))
    (test 1 (cube 1))
    (test (- 1) (cube (- 1)))
    (test 2.744 (cube 1.4))
    (test (- 27) (cube (- 3))))

(test-exit)
