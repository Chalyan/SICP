(module rand_pos_num (get_a_random_positive_number)
    
    (import scheme)
    (import (chicken random))
    
    (define (get_a_random_positive_number generator)
        
        (define random-positive (generator))
    
            (if (= random-positive 0)
                0.1
                random-positive)))
