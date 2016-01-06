NAME friction_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_7350
 L  constraint1_7100
 L  constraint1_1330
 L  constraint2_7350
 L  constraint2_7351
 L  constraint2_7352
 L  constraint2_7353
 L  constraint2_7100
 L  constraint2_7101
 L  constraint2_7102
 L  constraint2_7103
 L  constraint2_1330
 L  constraint2_1331
 L  constraint2_1332
 L  constraint2_1333
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_735_0_0  OBJ       -1.0794913987657336e-04
    Z_735_0_0  constraint1_7350  1
    Z_735_0_0  constraint2_7350  1
    Z_735_0_1  OBJ       -3.0415652215073684e-03
    Z_735_0_1  constraint1_7350  1
    Z_735_0_1  constraint2_7351  1
    Z_735_0_2  OBJ       -8.2369644401854547e-01
    Z_735_0_2  constraint1_7350  1
    Z_735_0_2  constraint2_7352  1
    Z_735_0_3  OBJ       -1.2949585613588113e-03
    Z_735_0_3  constraint1_7350  1
    Z_735_0_3  constraint2_7353  1
    Z_735_0_4  OBJ       -7.1859083058711859e-02
    Z_735_0_4  constraint1_7350  1
    Z_710_0_0  OBJ       -8.8957484404283648e-05
    Z_710_0_0  constraint1_7100  1
    Z_710_0_0  constraint2_7100  1
    Z_710_0_1  OBJ       -2.2507275532627920e-03
    Z_710_0_1  constraint1_7100  1
    Z_710_0_1  constraint2_7101  1
    Z_710_0_2  OBJ       -8.5480162806037707e-01
    Z_710_0_2  constraint1_7100  1
    Z_710_0_2  constraint2_7102  1
    Z_710_0_3  OBJ       -5.1614119010777006e-03
    Z_710_0_3  constraint1_7100  1
    Z_710_0_3  constraint2_7103  1
    Z_710_0_4  OBJ       -3.7697275000878244e-02
    Z_710_0_4  constraint1_7100  1
    Z_133_0_0  OBJ       -1.8057930919931344e-04
    Z_133_0_0  constraint1_1330  1
    Z_133_0_0  constraint2_1330  1
    Z_133_0_1  OBJ       -1.8170105534695172e-03
    Z_133_0_1  constraint1_1330  1
    Z_133_0_1  constraint2_1331  1
    Z_133_0_2  OBJ       -7.2724078256688685e-01
    Z_133_0_2  constraint1_1330  1
    Z_133_0_2  constraint2_1332  1
    Z_133_0_3  OBJ       -1.8056753322329240e-03
    Z_133_0_3  constraint1_1330  1
    Z_133_0_3  constraint2_1333  1
    Z_133_0_4  OBJ       -1.6895595223821147e-01
    Z_133_0_4  constraint1_1330  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_7350  1
    RHS1      constraint1_7100  1
    RHS1      constraint1_1330  1
    RHS1      constraint2_7350  1
    RHS1      constraint2_7351  1
    RHS1      constraint2_7352  1
    RHS1      constraint2_7353  1
    RHS1      constraint2_7100  1
    RHS1      constraint2_7101  1
    RHS1      constraint2_7102  1
    RHS1      constraint2_7103  1
    RHS1      constraint2_1330  1
    RHS1      constraint2_1331  1
    RHS1      constraint2_1332  1
    RHS1      constraint2_1333  1
BOUNDS
 UP BND1      Z_735_0_0  1
 UP BND1      Z_735_0_1  1
 UP BND1      Z_735_0_2  1
 UP BND1      Z_735_0_3  1
 UP BND1      Z_735_0_4  1
 UP BND1      Z_710_0_0  1
 UP BND1      Z_710_0_1  1
 UP BND1      Z_710_0_2  1
 UP BND1      Z_710_0_3  1
 UP BND1      Z_710_0_4  1
 UP BND1      Z_133_0_0  1
 UP BND1      Z_133_0_1  1
 UP BND1      Z_133_0_2  1
 UP BND1      Z_133_0_3  1
 UP BND1      Z_133_0_4  1
QUADOBJ
    Z_735_0_0  Z_133_0_0  -1.9999999999999996e-01
    Z_735_0_1  Z_133_0_1  -1.9999999999999996e-01
    Z_735_0_2  Z_133_0_2  -1.9999999999999996e-01
    Z_735_0_3  Z_133_0_3  -1.9999999999999996e-01
ENDATA
