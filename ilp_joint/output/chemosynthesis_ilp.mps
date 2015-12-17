NAME chemosynthesis_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_1400
 L  constraint2_1400
 L  constraint2_1401
 L  constraint2_1402
 L  constraint2_1403
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_140_0_0  OBJ       -7.7412132342712794e-05
    Z_140_0_0  constraint1_1400  1
    Z_140_0_0  constraint2_1400  1
    Z_140_0_1  OBJ       -2.9687204451503539e-03
    Z_140_0_1  constraint1_1400  1
    Z_140_0_1  constraint2_1401  1
    Z_140_0_2  OBJ       -5.5518448827354261e-01
    Z_140_0_2  constraint1_1400  1
    Z_140_0_2  constraint2_1402  1
    Z_140_0_3  OBJ       -3.0900051413059555e-04
    Z_140_0_3  constraint1_1400  1
    Z_140_0_3  constraint2_1403  1
    Z_140_0_4  OBJ       -3.4146037863483369e-01
    Z_140_0_4  constraint1_1400  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_1400  1
    RHS1      constraint2_1400  1
    RHS1      constraint2_1401  1
    RHS1      constraint2_1402  1
    RHS1      constraint2_1403  1
BOUNDS
 UP BND1      Z_140_0_0  1
 UP BND1      Z_140_0_1  1
 UP BND1      Z_140_0_2  1
 UP BND1      Z_140_0_3  1
 UP BND1      Z_140_0_4  1
ENDATA
