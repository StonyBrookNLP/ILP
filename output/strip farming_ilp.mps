NAME strip farming_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_640
 L  constraint2_640
 L  constraint2_641
 L  constraint2_642
 L  constraint2_643
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_64_0_0  OBJ       -3.5062048505330476e-04
    Z_64_0_0  constraint1_640  1
    Z_64_0_0  constraint2_640  1
    Z_64_0_1  OBJ       -1.5342283517144997e-02
    Z_64_0_1  constraint1_640  1
    Z_64_0_1  constraint2_641  1
    Z_64_0_2  OBJ       -7.3023290634162985e-01
    Z_64_0_2  constraint1_640  1
    Z_64_0_2  constraint2_642  1
    Z_64_0_3  OBJ       -7.1655128322194849e-03
    Z_64_0_3  constraint1_640  1
    Z_64_0_3  constraint2_643  1
    Z_64_0_4  OBJ       -1.4690867682395231e-01
    Z_64_0_4  constraint1_640  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_640  1
    RHS1      constraint2_640  1
    RHS1      constraint2_641  1
    RHS1      constraint2_642  1
    RHS1      constraint2_643  1
BOUNDS
 UP BND1      Z_64_0_0  1
 UP BND1      Z_64_0_1  1
 UP BND1      Z_64_0_2  1
 UP BND1      Z_64_0_3  1
 UP BND1      Z_64_0_4  1
ENDATA
