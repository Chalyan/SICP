all_tests: chicken-module-installer square cube random-positive-number cube-root \
			tree-recursion-iterative tree-recursion-recursive pascals-triangle exponentiation

chicken-module-installer:
	chicken-install -s test test-generative srfi-1

square:
	cd Building_abstractions_with_procedures/The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Square_function/Tests && \
	$(CSI) unit_test.scm

cube:
	cd Building_abstractions_with_procedures/The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Cube_function/Tests && \
	$(CSI) unit_test.scm

random-positive-number:
	cd Building_abstractions_with_procedures/The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Random_positive_number_generator/Tests && \
	$(CSI) unit_test.scm

cube-root:
	cd Building_abstractions_with_procedures/The_elements_of_programming/Procedures_as_Black_Box_Abstractions/Cube_root_with_lexical_scoping/Cube_root/Tests && \
	$(CSI) unit_test.scm && $(CSI) pbt.scm

tree-recursion-iterative:
	cd Building_abstractions_with_procedures/Procedures_and_the_processes_they_generate/Tree_recursion/Exercise_1.11/Iterative/Tests && \
	$(CSI) unit_test.scm && $(CSI) pbt.scm

tree-recursion-recursive:
	cd Building_abstractions_with_procedures/Procedures_and_the_processes_they_generate/Tree_recursion/Exercise_1.11/Recursive/Tests && \
	$(CSI) unit_test.scm && $(CSI) pbt.scm

pascals-triangle:
	cd Building_abstractions_with_procedures/Procedures_and_the_processes_they_generate/Tree_recursion/Exercise_1.12/Tests && \
	$(CSI) unit_test.scm

exponentiation:
	cd Building_abstractions_with_procedures/Procedures_and_the_processes_they_generate/Exponentiation/Iterative_successive_squaring/Tests && \
	$(CSI) unit_test.scm && $(CSI) pbt.scm
