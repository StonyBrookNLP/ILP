NAME meiosis_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_971
 L  constraint1_1121
 L  constraint1_621
 L  constraint2_970
 L  constraint2_971
 L  constraint2_972
 L  constraint2_973
 L  constraint2_1120
 L  constraint2_1121
 L  constraint2_1122
 L  constraint2_1123
 L  constraint2_620
 L  constraint2_621
 L  constraint2_622
 L  constraint2_623
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_97_1_0  OBJ       -8.5149002681558783e-03
    Z_97_1_0  constraint1_971  1
    Z_97_1_0  constraint2_970  1
    Z_97_1_1  OBJ       -4.0164318205303967e-01
    Z_97_1_1  constraint1_971  1
    Z_97_1_1  constraint2_971  1
    Z_97_1_2  OBJ       -6.6282609259488146e-03
    Z_97_1_2  constraint1_971  1
    Z_97_1_2  constraint2_972  1
    Z_97_1_3  OBJ       -1.2602382096094118e-02
    Z_97_1_3  constraint1_971  1
    Z_97_1_3  constraint2_973  1
    Z_112_1_0  OBJ       -8.7561334731178775e-04
    Z_112_1_0  constraint1_1121  1
    Z_112_1_0  constraint2_1120  1
    Z_112_1_1  OBJ       -1.8934239158319710e-03
    Z_112_1_1  constraint1_1121  1
    Z_112_1_1  constraint2_1121  1
    Z_112_1_2  OBJ       -1.6551298571866824e-02
    Z_112_1_2  constraint1_1121  1
    Z_112_1_2  constraint2_1122  1
    Z_112_1_3  OBJ       -3.3398353421926547e-01
    Z_112_1_3  constraint1_1121  1
    Z_112_1_3  constraint2_1123  1
    Z_62_1_0  OBJ       -2.4578408483239000e-03
    Z_62_1_0  constraint1_621  1
    Z_62_1_0  constraint2_620  1
    Z_62_1_1  OBJ       -3.7249205706349486e-03
    Z_62_1_1  constraint1_621  1
    Z_62_1_1  constraint2_621  1
    Z_62_1_2  OBJ       -3.1475332611984558e-01
    Z_62_1_2  constraint1_621  1
    Z_62_1_2  constraint2_622  1
    Z_62_1_3  OBJ       -7.1302949770723481e-03
    Z_62_1_3  constraint1_621  1
    Z_62_1_3  constraint2_623  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_971  1
    RHS1      constraint1_1121  1
    RHS1      constraint1_621  1
    RHS1      constraint2_970  1
    RHS1      constraint2_971  1
    RHS1      constraint2_972  1
    RHS1      constraint2_973  1
    RHS1      constraint2_1120  1
    RHS1      constraint2_1121  1
    RHS1      constraint2_1122  1
    RHS1      constraint2_1123  1
    RHS1      constraint2_620  1
    RHS1      constraint2_621  1
    RHS1      constraint2_622  1
    RHS1      constraint2_623  1
BOUNDS
 UP BND1      Z_97_1_0  1
 UP BND1      Z_97_1_1  1
 UP BND1      Z_97_1_2  1
 UP BND1      Z_97_1_3  1
 UP BND1      Z_112_1_0  1
 UP BND1      Z_112_1_1  1
 UP BND1      Z_112_1_2  1
 UP BND1      Z_112_1_3  1
 UP BND1      Z_62_1_0  1
 UP BND1      Z_62_1_1  1
 UP BND1      Z_62_1_2  1
 UP BND1      Z_62_1_3  1
QUADOBJ
    Z_97_1_0  Z_112_1_0  -1.4172301228876835e-01
    Z_97_1_0  Z_62_1_0  -1.8392495434433277e-03
    Z_97_1_1  Z_112_1_1  -1.4172301228876835e-01
    Z_97_1_1  Z_62_1_1  -1.8392495434433277e-03
    Z_97_1_2  Z_112_1_2  -1.4172301228876835e-01
    Z_97_1_2  Z_62_1_2  -1.8392495434433277e-03
    Z_97_1_3  Z_112_1_3  -1.4172301228876835e-01
    Z_97_1_3  Z_62_1_3  -1.8392495434433277e-03
    Z_112_1_0  Z_62_1_0  -1.1111111111111111e-03
    Z_112_1_1  Z_62_1_1  -1.1111111111111111e-03
    Z_112_1_2  Z_62_1_2  -1.1111111111111111e-03
    Z_112_1_3  Z_62_1_3  -1.1111111111111111e-03
ENDATA
