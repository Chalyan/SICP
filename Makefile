all_tests: chicken-module-installer square cube random-positive-number cube-root \
		   tree-recursion-iterative tree-recursion-recursive pascals-triangle exponentiation \
		   smallest-divisor smallest-divisor-with-next-function sum

chicken-module-installer:
	./chicken-module-installer.sh $(INSTALL_MISSING_LIBS)

square:
	cd Building_abstractions_with_procedures/The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Square_function/Tests && \
	$(CSI) unit_test.scm && cd ../../../../../..

cube:
	cd Building_abstractions_with_procedures/The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Cube_function/Tests && \
	$(CSI) unit_test.scm && cd ../../../../../..

random-positive-number:
	cd Building_abstractions_with_procedures/The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Random_positive_number_generator/Tests && \
	$(CSI) unit_test.scm && cd ../../../../../..

cube-root:
	cd Building_abstractions_with_procedures/The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Cube_root/Tests && \
	$(CSI) unit_test.scm && $(CSI) pbt.scm && cd ../../../../../..

tree-recursion-iterative:
	cd Building_abstractions_with_procedures/Procedures_and_the_processes_they_generate/Tree_recursion/Exercise_1.11/Iterative/Tests && \
	$(CSI) unit_test.scm && $(CSI) pbt.scm && cd ../../../../../..

tree-recursion-recursive:
	cd Building_abstractions_with_procedures/Procedures_and_the_processes_they_generate/Tree_recursion/Exercise_1.11/Recursive/Tests && \
	$(CSI) unit_test.scm && $(CSI) pbt.scm && cd ../../../../../..

pascals-triangle:
	cd Building_abstractions_with_procedures/Procedures_and_the_processes_they_generate/Tree_recursion/Exercise_1.12/Tests && \
	$(CSI) unit_test.scm && cd ../../../../..

exponentiation:
	cd Building_abstractions_with_procedures/Procedures_and_the_processes_they_generate/Exponentiation/Iterative_successive_squaring/Tests && \
	$(CSI) unit_test.scm && $(CSI) pbt.scm && cd ../../../../..

smallest-divisor:
	cd Building_abstractions_with_procedures/Procedures_and_the_processes_they_generate/Testing_for_primality/Exercise_1.21/Tests && \
	$(CSI) smallest_divisor_tests.scm && $(CSI) bad_prime_tests.scm && cd ../../../../..

smallest-divisor-with-next-function:
	cd Building_abstractions_with_procedures/Procedures_and_the_processes_they_generate/Testing_for_primality/Exercise_1.23/Tests && \
	$(CSI) next_divisor_tests.scm && $(CSI) smallest_divisor_tests.scm && $(CSI) report_time_tests.scm && $(CSI) prime_tests.scm && \
	$(CSI) start_prime_test_tests.scm && cd ../../../../..

sum:
	cd Building_abstractions_with_procedures/Formulating_abstractions_with_higher_order_procedures/Procedures_as_arguments/The_sum_function/Tests && \
	$(CSI) next_tests.scm && $(CSI) sum_function_tests.scm && cd ../../../../..
