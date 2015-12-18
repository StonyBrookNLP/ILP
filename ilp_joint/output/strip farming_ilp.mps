NAME strip farming_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_1230
 L  constraint2_1230
 L  constraint2_1231
 L  constraint2_1232
 L  constraint2_1233
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_123_0_0  OBJ       -2.3846950599271422e-04
    Z_123_0_0  constraint1_1230  1
    Z_123_0_0  constraint2_1230  1
    Z_123_0_1  OBJ       -1.2591930349308923e-02
    Z_123_0_1  constraint1_1230  1
    Z_123_0_1  constraint2_1231  1
    Z_123_0_2  OBJ       -6.5079689946055452e-01
    Z_123_0_2  constraint1_1230  1
    Z_123_0_2  constraint2_1232  1
    Z_123_0_3  OBJ       -1.4148689547205918e-03
    Z_123_0_3  constraint1_1230  1
    Z_123_0_3  constraint2_1233  1
    Z_123_0_4  OBJ       -2.3495783172942317e-01
    Z_123_0_4  constraint1_1230  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_1230  1
    RHS1      constraint2_1230  1
    RHS1      constraint2_1231  1
    RHS1      constraint2_1232  1
    RHS1      constraint2_1233  1
BOUNDS
 UP BND1      Z_123_0_0  1
 UP BND1      Z_123_0_1  1
 UP BND1      Z_123_0_2  1
 UP BND1      Z_123_0_3  1
 UP BND1      Z_123_0_4  1
ENDATA
