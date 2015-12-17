NAME chemical change_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_3110
 L  constraint2_3840
 L  constraint2_3841
 L  constraint2_3842
 L  constraint2_3843
 L  constraint2_3110
 L  constraint2_3111
 L  constraint2_3112
 L  constraint2_3113
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_311_0_0  OBJ       -6.1092124427395623e-05
    Z_311_0_0  constraint1_3110  1
    Z_311_0_0  constraint2_3110  1
    Z_311_0_1  OBJ       -1.1064379844171239e-02
    Z_311_0_1  constraint1_3110  1
    Z_311_0_1  constraint2_3111  1
    Z_311_0_2  OBJ       -8.8477880819619747e-01
    Z_311_0_2  constraint1_3110  1
    Z_311_0_2  constraint2_3112  1
    Z_311_0_3  OBJ       -1.5030276900039354e-03
    Z_311_0_3  constraint1_3110  1
    Z_311_0_3  constraint2_3113  1
    Z_311_0_4  OBJ       -2.5926921451999755e-03
    Z_311_0_4  constraint1_3110  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_3110  1
    RHS1      constraint2_3840  1
    RHS1      constraint2_3841  1
    RHS1      constraint2_3842  1
    RHS1      constraint2_3843  1
    RHS1      constraint2_3110  1
    RHS1      constraint2_3111  1
    RHS1      constraint2_3112  1
    RHS1      constraint2_3113  1
BOUNDS
 UP BND1      Z_311_0_0  1
 UP BND1      Z_311_0_1  1
 UP BND1      Z_311_0_2  1
 UP BND1      Z_311_0_3  1
 UP BND1      Z_311_0_4  1
ENDATA
