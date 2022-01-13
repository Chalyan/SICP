(import test)

(include "../Sources/pascalstriangle.scm")

(import pascal-triangle)

(test-group "'Pascal`s triangle' unit tests"
    (test 1 (pascal 1 1))
    (test 0 (pascal 1 0))
    (test 1 (pascal 2 1))
    (test 1 (pascal 2 2))
    (test 1 (pascal 3 1))
    (test 2 (pascal 3 2))
    (test 1 (pascal 3 3))
    (test 1 (pascal 4 1))
    (test 3 (pascal 4 2))
    (test 3 (pascal 4 3))
    (test 1 (pascal 4 4))
    (test 6 (pascal 5 3)))

(test-exit)
