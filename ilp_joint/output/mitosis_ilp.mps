NAME mitosis_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_541
 L  constraint1_540
 L  constraint1_542
 L  constraint1_1500
 L  constraint2_2900
 L  constraint2_2901
 L  constraint2_2902
 L  constraint2_2903
 L  constraint2_540
 L  constraint2_541
 L  constraint2_542
 L  constraint2_543
 L  constraint2_1500
 L  constraint2_1501
 L  constraint2_1502
 L  constraint2_1503
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_54_1_0  OBJ       -6.7494972486060667e-01
    Z_54_1_0  constraint1_541  1
    Z_54_1_0  constraint2_540  1
    Z_54_1_1  OBJ       -2.3444554700027716e-02
    Z_54_1_1  constraint1_541  1
    Z_54_1_1  constraint2_541  1
    Z_54_1_2  OBJ       -1.6643102458735333e-03
    Z_54_1_2  constraint1_541  1
    Z_54_1_2  constraint2_542  1
    Z_54_1_3  OBJ       -1.6883297546462758e-01
    Z_54_1_3  constraint1_541  1
    Z_54_1_3  constraint2_543  1
    Z_54_1_4  OBJ       -3.1108434728864598e-02
    Z_54_1_4  constraint1_541  1
    Z_54_0_0  OBJ       -2.1309172796496298e-03
    Z_54_0_0  constraint1_540  1
    Z_54_0_0  constraint2_540  1
    Z_54_0_1  OBJ       -1.9102616473483478e-03
    Z_54_0_1  constraint1_540  1
    Z_54_0_1  constraint2_541  1
    Z_54_0_2  OBJ       -8.5880130382531150e-01
    Z_54_0_2  constraint1_540  1
    Z_54_0_2  constraint2_542  1
    Z_54_0_3  OBJ       -9.5781504883527876e-03
    Z_54_0_3  constraint1_540  1
    Z_54_0_3  constraint2_543  1
    Z_54_0_4  OBJ       -2.7579366759337816e-02
    Z_54_0_4  constraint1_540  1
    Z_54_2_0  OBJ       -2.8498026562769969e-02
    Z_54_2_0  constraint1_542  1
    Z_54_2_0  constraint2_540  1
    Z_54_2_1  OBJ       -3.0120495076624882e-03
    Z_54_2_1  constraint1_542  1
    Z_54_2_1  constraint2_541  1
    Z_54_2_2  OBJ       -5.1447296313170340e-03
    Z_54_2_2  constraint1_542  1
    Z_54_2_2  constraint2_542  1
    Z_54_2_3  OBJ       -7.3408272234435989e-01
    Z_54_2_3  constraint1_542  1
    Z_54_2_3  constraint2_543  1
    Z_54_2_4  OBJ       -1.2926247195389071e-01
    Z_54_2_4  constraint1_542  1
    Z_150_0_0  OBJ       -7.8873543464742758e-04
    Z_150_0_0  constraint1_1500  1
    Z_150_0_0  constraint2_1500  1
    Z_150_0_1  OBJ       -3.8888658270624357e-04
    Z_150_0_1  constraint1_1500  1
    Z_150_0_1  constraint2_1501  1
    Z_150_0_2  OBJ       -1.3622893848677166e-02
    Z_150_0_2  constraint1_1500  1
    Z_150_0_2  constraint2_1502  1
    Z_150_0_3  OBJ       -8.5410872674611804e-01
    Z_150_0_3  constraint1_1500  1
    Z_150_0_3  constraint2_1503  1
    Z_150_0_4  OBJ       -3.1090757387851078e-02
    Z_150_0_4  constraint1_1500  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_541  1
    RHS1      constraint1_540  1
    RHS1      constraint1_542  1
    RHS1      constraint1_1500  1
    RHS1      constraint2_2900  1
    RHS1      constraint2_2901  1
    RHS1      constraint2_2902  1
    RHS1      constraint2_2903  1
    RHS1      constraint2_540  1
    RHS1      constraint2_541  1
    RHS1      constraint2_542  1
    RHS1      constraint2_543  1
    RHS1      constraint2_1500  1
    RHS1      constraint2_1501  1
    RHS1      constraint2_1502  1
    RHS1      constraint2_1503  1
BOUNDS
 UP BND1      Z_54_1_0  1
 UP BND1      Z_54_1_1  1
 UP BND1      Z_54_1_2  1
 UP BND1      Z_54_1_3  1
 UP BND1      Z_54_1_4  1
 UP BND1      Z_54_0_0  1
 UP BND1      Z_54_0_1  1
 UP BND1      Z_54_0_2  1
 UP BND1      Z_54_0_3  1
 UP BND1      Z_54_0_4  1
 UP BND1      Z_54_2_0  1
 UP BND1      Z_54_2_1  1
 UP BND1      Z_54_2_2  1
 UP BND1      Z_54_2_3  1
 UP BND1      Z_54_2_4  1
 UP BND1      Z_150_0_0  1
 UP BND1      Z_150_0_1  1
 UP BND1      Z_150_0_2  1
 UP BND1      Z_150_0_3  1
 UP BND1      Z_150_0_4  1
QUADOBJ
    Z_54_1_0  Z_150_0_0  -8.0934775156934327e-02
    Z_54_1_1  Z_150_0_1  -8.0934775156934327e-02
    Z_54_1_2  Z_150_0_2  -8.0934775156934327e-02
    Z_54_1_3  Z_150_0_3  -8.0934775156934327e-02
    Z_54_1_4  Z_150_0_4  -8.0934775156934327e-02
    Z_54_2_0  Z_150_0_0  -1.2940006491978084e-01
    Z_54_2_1  Z_150_0_1  -1.2940006491978084e-01
    Z_54_2_2  Z_150_0_2  -1.2940006491978084e-01
    Z_54_2_3  Z_150_0_3  -1.2940006491978084e-01
    Z_54_2_4  Z_150_0_4  -1.2940006491978084e-01
ENDATA
