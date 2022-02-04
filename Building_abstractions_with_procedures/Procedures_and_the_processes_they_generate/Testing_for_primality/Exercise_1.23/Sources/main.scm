(include "../Sources/timed_prime.scm")
(include "../Sources/prime.scm")
(include "../../Exercise_1.21/Sources/bad_prime.scm")

(import timed-prime)
(import is-prime)
(import is-prime-bad)

(newline)

(display "Outputting the number and the time, calculated by the slow algorithm")
(timed-prime-test bad_prime? 5600748293801)
(timed-prime-test bad_prime? 67280421310721)
(timed-prime-test bad_prime? 688846502588399)
(timed-prime-test bad_prime? 1000000000100011)

(display "Outputting the number and the time, calculated by the fast algorithm")
(timed-prime-test prime? 5600748293801)
(timed-prime-test prime? 67280421310721)
(timed-prime-test prime? 688846502588399)
(timed-prime-test prime? 1000000000100011)
