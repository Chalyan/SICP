(import test)

(include "../Sources/report_time.scm")

(import report-time)

(test-group "'Report time' tests"
    (test " *** -1" (report_time (- 1)))
    (test " *** 0" (report_time 0))
    (test " *** 0.1" (report_time 0.1))
    (test " *** 5" (report_time 5))
    (test " *** 13" (report_time 13)))

(test-exit)
