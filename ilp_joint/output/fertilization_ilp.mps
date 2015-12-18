NAME fertilization_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_4900
 L  constraint2_4900
 L  constraint2_4901
 L  constraint2_4902
 L  constraint2_4903
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_490_0_0  OBJ       -8.5204800574598680e-04
    Z_490_0_0  constraint1_4900  1
    Z_490_0_0  constraint2_4900  1
    Z_490_0_1  OBJ       -3.5923385064667158e-03
    Z_490_0_1  constraint1_4900  1
    Z_490_0_1  constraint2_4901  1
    Z_490_0_2  OBJ       -4.6268702416560520e-01
    Z_490_0_2  constraint1_4900  1
    Z_490_0_2  constraint2_4902  1
    Z_490_0_3  OBJ       -3.0449055539076902e-03
    Z_490_0_3  constraint1_4900  1
    Z_490_0_3  constraint2_4903  1
    Z_490_0_4  OBJ       -4.2982368376827434e-01
    Z_490_0_4  constraint1_4900  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_4900  1
    RHS1      constraint2_4900  1
    RHS1      constraint2_4901  1
    RHS1      constraint2_4902  1
    RHS1      constraint2_4903  1
BOUNDS
 UP BND1      Z_490_0_0  1
 UP BND1      Z_490_0_1  1
 UP BND1      Z_490_0_2  1
 UP BND1      Z_490_0_3  1
 UP BND1      Z_490_0_4  1
ENDATA
