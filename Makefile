all_tests: chicken-module-installer square cube random-positive-number cube-root

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
