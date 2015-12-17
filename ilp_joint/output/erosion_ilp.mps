NAME erosion_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_530
 L  constraint1_1360
 L  constraint1_960
 L  constraint2_530
 L  constraint2_531
 L  constraint2_532
 L  constraint2_533
 L  constraint2_1360
 L  constraint2_1361
 L  constraint2_1362
 L  constraint2_1363
 L  constraint2_960
 L  constraint2_961
 L  constraint2_962
 L  constraint2_963
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_53_0_0  OBJ       -2.0808869587580971e-02
    Z_53_0_0  constraint1_530  1
    Z_53_0_0  constraint2_530  1
    Z_53_0_1  OBJ       -4.4074044744600596e-02
    Z_53_0_1  constraint1_530  1
    Z_53_0_1  constraint2_531  1
    Z_53_0_2  OBJ       -1.9333581073815539e-01
    Z_53_0_2  constraint1_530  1
    Z_53_0_2  constraint2_532  1
    Z_53_0_3  OBJ       -3.8011917301562434e-02
    Z_53_0_3  constraint1_530  1
    Z_53_0_3  constraint2_533  1
    Z_136_0_0  OBJ       -7.7741011003524601e-03
    Z_136_0_0  constraint1_1360  1
    Z_136_0_0  constraint2_1360  1
    Z_136_0_1  OBJ       -3.1423155595965237e-02
    Z_136_0_1  constraint1_1360  1
    Z_136_0_1  constraint2_1361  1
    Z_136_0_2  OBJ       -6.8196301820456617e-01
    Z_136_0_2  constraint1_1360  1
    Z_136_0_2  constraint2_1362  1
    Z_136_0_3  OBJ       -1.8406041273047756e-02
    Z_136_0_3  constraint1_1360  1
    Z_136_0_3  constraint2_1363  1
    Z_96_0_0  OBJ       -1.8769704549934652e-03
    Z_96_0_0  constraint1_960  1
    Z_96_0_0  constraint2_960  1
    Z_96_0_1  OBJ       -9.2693132392249310e-03
    Z_96_0_1  constraint1_960  1
    Z_96_0_1  constraint2_961  1
    Z_96_0_2  OBJ       -8.2813159295245453e-01
    Z_96_0_2  constraint1_960  1
    Z_96_0_2  constraint2_962  1
    Z_96_0_3  OBJ       -1.2219460405523092e-02
    Z_96_0_3  constraint1_960  1
    Z_96_0_3  constraint2_963  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_530  1
    RHS1      constraint1_1360  1
    RHS1      constraint1_960  1
    RHS1      constraint2_530  1
    RHS1      constraint2_531  1
    RHS1      constraint2_532  1
    RHS1      constraint2_533  1
    RHS1      constraint2_1360  1
    RHS1      constraint2_1361  1
    RHS1      constraint2_1362  1
    RHS1      constraint2_1363  1
    RHS1      constraint2_960  1
    RHS1      constraint2_961  1
    RHS1      constraint2_962  1
    RHS1      constraint2_963  1
BOUNDS
 UP BND1      Z_53_0_0  1
 UP BND1      Z_53_0_1  1
 UP BND1      Z_53_0_2  1
 UP BND1      Z_53_0_3  1
 UP BND1      Z_136_0_0  1
 UP BND1      Z_136_0_1  1
 UP BND1      Z_136_0_2  1
 UP BND1      Z_136_0_3  1
 UP BND1      Z_96_0_0  1
 UP BND1      Z_96_0_1  1
 UP BND1      Z_96_0_2  1
 UP BND1      Z_96_0_3  1
QUADOBJ
    Z_136_0_0  Z_96_0_0  -1.9999999999999996e-01
    Z_136_0_1  Z_96_0_1  -1.9999999999999996e-01
    Z_136_0_2  Z_96_0_2  -1.9999999999999996e-01
    Z_136_0_3  Z_96_0_3  -1.9999999999999996e-01
ENDATA
