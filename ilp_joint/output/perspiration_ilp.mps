NAME perspiration_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_1270
 L  constraint2_1270
 L  constraint2_1271
 L  constraint2_1272
 L  constraint2_1273
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_127_0_0  OBJ       -1.9915764319213391e-02
    Z_127_0_0  constraint1_1270  1
    Z_127_0_0  constraint2_1270  1
    Z_127_0_1  OBJ       -8.4979367319191632e-02
    Z_127_0_1  constraint1_1270  1
    Z_127_0_1  constraint2_1271  1
    Z_127_0_2  OBJ       -7.2030913845289909e-02
    Z_127_0_2  constraint1_1270  1
    Z_127_0_2  constraint2_1272  1
    Z_127_0_3  OBJ       -1.2176663319085665e-02
    Z_127_0_3  constraint1_1270  1
    Z_127_0_3  constraint2_1273  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_1270  1
    RHS1      constraint2_1270  1
    RHS1      constraint2_1271  1
    RHS1      constraint2_1272  1
    RHS1      constraint2_1273  1
BOUNDS
 UP BND1      Z_127_0_0  1
 UP BND1      Z_127_0_1  1
 UP BND1      Z_127_0_2  1
 UP BND1      Z_127_0_3  1
ENDATA
