NAME breathing_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_5650
 L  constraint1_3600
 L  constraint2_5650
 L  constraint2_5651
 L  constraint2_5652
 L  constraint2_5653
 L  constraint2_3600
 L  constraint2_3601
 L  constraint2_3602
 L  constraint2_3603
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_565_0_0  OBJ       -2.2740501249049737e-04
    Z_565_0_0  constraint1_5650  1
    Z_565_0_0  constraint2_5650  1
    Z_565_0_1  OBJ       -3.9419289065822285e-03
    Z_565_0_1  constraint1_5650  1
    Z_565_0_1  constraint2_5651  1
    Z_565_0_2  OBJ       -8.6666385848195893e-01
    Z_565_0_2  constraint1_5650  1
    Z_565_0_2  constraint2_5652  1
    Z_565_0_3  OBJ       -7.6106067165459927e-04
    Z_565_0_3  constraint1_5650  1
    Z_565_0_3  constraint2_5653  1
    Z_565_0_4  OBJ       -2.8405746927313791e-02
    Z_565_0_4  constraint1_5650  1
    Z_360_0_0  OBJ       -1.2992594517316292e-02
    Z_360_0_0  constraint1_3600  1
    Z_360_0_0  constraint2_3600  1
    Z_360_0_1  OBJ       -5.1571538660280569e-01
    Z_360_0_1  constraint1_3600  1
    Z_360_0_1  constraint2_3601  1
    Z_360_0_2  OBJ       -7.7324025143413180e-03
    Z_360_0_2  constraint1_3600  1
    Z_360_0_2  constraint2_3602  1
    Z_360_0_3  OBJ       -2.1099491688234280e-02
    Z_360_0_3  constraint1_3600  1
    Z_360_0_3  constraint2_3603  1
    Z_360_0_4  OBJ       -3.4246012467730247e-01
    Z_360_0_4  constraint1_3600  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_5650  1
    RHS1      constraint1_3600  1
    RHS1      constraint2_5650  1
    RHS1      constraint2_5651  1
    RHS1      constraint2_5652  1
    RHS1      constraint2_5653  1
    RHS1      constraint2_3600  1
    RHS1      constraint2_3601  1
    RHS1      constraint2_3602  1
    RHS1      constraint2_3603  1
BOUNDS
 UP BND1      Z_565_0_0  1
 UP BND1      Z_565_0_1  1
 UP BND1      Z_565_0_2  1
 UP BND1      Z_565_0_3  1
 UP BND1      Z_565_0_4  1
 UP BND1      Z_360_0_0  1
 UP BND1      Z_360_0_1  1
 UP BND1      Z_360_0_2  1
 UP BND1      Z_360_0_3  1
 UP BND1      Z_360_0_4  1
ENDATA
