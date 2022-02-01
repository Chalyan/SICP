(module report-time (report_time)
    
    (import scheme)
    
    (define (report_time elapsed_time)
        (string-append "***" (number->string elapsed_time))))
