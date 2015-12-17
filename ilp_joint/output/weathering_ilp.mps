NAME weathering_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_950
 L  constraint1_3380
 L  constraint1_3320
 L  constraint1_4560
 L  constraint2_950
 L  constraint2_951
 L  constraint2_952
 L  constraint2_953
 L  constraint2_3380
 L  constraint2_3381
 L  constraint2_3382
 L  constraint2_3383
 L  constraint2_3320
 L  constraint2_3321
 L  constraint2_3322
 L  constraint2_3323
 L  constraint2_4560
 L  constraint2_4561
 L  constraint2_4562
 L  constraint2_4563
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_95_0_0  OBJ       -6.9763211796156821e-01
    Z_95_0_0  constraint1_950  1
    Z_95_0_0  constraint2_950  1
    Z_95_0_1  OBJ       -8.6261682165984621e-02
    Z_95_0_1  constraint1_950  1
    Z_95_0_1  constraint2_951  1
    Z_95_0_2  OBJ       -8.0186535950731424e-03
    Z_95_0_2  constraint1_950  1
    Z_95_0_2  constraint2_952  1
    Z_95_0_3  OBJ       -9.4342521472693286e-02
    Z_95_0_3  constraint1_950  1
    Z_95_0_3  constraint2_953  1
    Z_95_0_4  OBJ       -1.3745024804680680e-02
    Z_95_0_4  constraint1_950  1
    Z_338_0_0  OBJ       -7.6864298228743221e-04
    Z_338_0_0  constraint1_3380  1
    Z_338_0_0  constraint2_3380  1
    Z_338_0_1  OBJ       -8.3870109074555437e-04
    Z_338_0_1  constraint1_3380  1
    Z_338_0_1  constraint2_3381  1
    Z_338_0_2  OBJ       -3.5293947586079347e-03
    Z_338_0_2  constraint1_3380  1
    Z_338_0_2  constraint2_3382  1
    Z_338_0_3  OBJ       -8.2370269664156792e-01
    Z_338_0_3  constraint1_3380  1
    Z_338_0_3  constraint2_3383  1
    Z_338_0_4  OBJ       -7.1160564526791134e-02
    Z_338_0_4  constraint1_3380  1
    Z_332_0_0  OBJ       -7.5538949173901537e-01
    Z_332_0_0  constraint1_3320  1
    Z_332_0_0  constraint2_3320  1
    Z_332_0_1  OBJ       -2.9049789665663843e-02
    Z_332_0_1  constraint1_3320  1
    Z_332_0_1  constraint2_3321  1
    Z_332_0_2  OBJ       -1.5575039789724705e-02
    Z_332_0_2  constraint1_3320  1
    Z_332_0_2  constraint2_3322  1
    Z_332_0_3  OBJ       -7.6518377036230781e-02
    Z_332_0_3  constraint1_3320  1
    Z_332_0_3  constraint2_3323  1
    Z_332_0_4  OBJ       -2.3467301769365321e-02
    Z_332_0_4  constraint1_3320  1
    Z_456_0_0  OBJ       -1.8640836332474429e-03
    Z_456_0_0  constraint1_4560  1
    Z_456_0_0  constraint2_4560  1
    Z_456_0_1  OBJ       -2.2252992841132191e-03
    Z_456_0_1  constraint1_4560  1
    Z_456_0_1  constraint2_4561  1
    Z_456_0_2  OBJ       -1.5248509684003290e-03
    Z_456_0_2  constraint1_4560  1
    Z_456_0_2  constraint2_4562  1
    Z_456_0_3  OBJ       -8.3432680610288523e-01
    Z_456_0_3  constraint1_4560  1
    Z_456_0_3  constraint2_4563  1
    Z_456_0_4  OBJ       -6.0058960011353808e-02
    Z_456_0_4  constraint1_4560  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_950  1
    RHS1      constraint1_3380  1
    RHS1      constraint1_3320  1
    RHS1      constraint1_4560  1
    RHS1      constraint2_950  1
    RHS1      constraint2_951  1
    RHS1      constraint2_952  1
    RHS1      constraint2_953  1
    RHS1      constraint2_3380  1
    RHS1      constraint2_3381  1
    RHS1      constraint2_3382  1
    RHS1      constraint2_3383  1
    RHS1      constraint2_3320  1
    RHS1      constraint2_3321  1
    RHS1      constraint2_3322  1
    RHS1      constraint2_3323  1
    RHS1      constraint2_4560  1
    RHS1      constraint2_4561  1
    RHS1      constraint2_4562  1
    RHS1      constraint2_4563  1
BOUNDS
 UP BND1      Z_95_0_0  1
 UP BND1      Z_95_0_1  1
 UP BND1      Z_95_0_2  1
 UP BND1      Z_95_0_3  1
 UP BND1      Z_95_0_4  1
 UP BND1      Z_338_0_0  1
 UP BND1      Z_338_0_1  1
 UP BND1      Z_338_0_2  1
 UP BND1      Z_338_0_3  1
 UP BND1      Z_338_0_4  1
 UP BND1      Z_332_0_0  1
 UP BND1      Z_332_0_1  1
 UP BND1      Z_332_0_2  1
 UP BND1      Z_332_0_3  1
 UP BND1      Z_332_0_4  1
 UP BND1      Z_456_0_0  1
 UP BND1      Z_456_0_1  1
 UP BND1      Z_456_0_2  1
 UP BND1      Z_456_0_3  1
 UP BND1      Z_456_0_4  1
QUADOBJ
    Z_95_0_0  Z_332_0_0  -1.9999999999999996e-01
    Z_95_0_1  Z_332_0_1  -1.9999999999999996e-01
    Z_95_0_2  Z_332_0_2  -1.9999999999999996e-01
    Z_95_0_3  Z_332_0_3  -1.9999999999999996e-01
    Z_95_0_4  Z_332_0_4  -1.9999999999999996e-01
    Z_338_0_0  Z_456_0_0  -1.2114140248376555e-05
    Z_338_0_1  Z_456_0_1  -1.2114140248376555e-05
    Z_338_0_2  Z_456_0_2  -1.2114140248376555e-05
    Z_338_0_3  Z_456_0_3  -1.2114140248376555e-05
    Z_338_0_4  Z_456_0_4  -1.2114140248376555e-05
ENDATA
