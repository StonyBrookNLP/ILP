NAME absorption_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_4040
 L  constraint1_3920
 L  constraint2_4040
 L  constraint2_4041
 L  constraint2_4042
 L  constraint2_4043
 L  constraint2_3920
 L  constraint2_3921
 L  constraint2_3922
 L  constraint2_3923
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_404_0_0  OBJ       -2.6899513867536086e-03
    Z_404_0_0  constraint1_4040  1
    Z_404_0_0  constraint2_4040  1
    Z_404_0_1  OBJ       -3.8276882634062591e-03
    Z_404_0_1  constraint1_4040  1
    Z_404_0_1  constraint2_4041  1
    Z_404_0_2  OBJ       -8.8297111140510176e-01
    Z_404_0_2  constraint1_4040  1
    Z_404_0_2  constraint2_4042  1
    Z_404_0_3  OBJ       -4.9505966337705654e-03
    Z_404_0_3  constraint1_4040  1
    Z_404_0_3  constraint2_4043  1
    Z_392_0_0  OBJ       -2.1157066938364169e-03
    Z_392_0_0  constraint1_3920  1
    Z_392_0_0  constraint2_3920  1
    Z_392_0_1  OBJ       -6.2411813789347908e-03
    Z_392_0_1  constraint1_3920  1
    Z_392_0_1  constraint2_3921  1
    Z_392_0_2  OBJ       -7.9177642835306905e-01
    Z_392_0_2  constraint1_3920  1
    Z_392_0_2  constraint2_3922  1
    Z_392_0_3  OBJ       -7.5372342033192402e-03
    Z_392_0_3  constraint1_3920  1
    Z_392_0_3  constraint2_3923  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_4040  1
    RHS1      constraint1_3920  1
    RHS1      constraint2_4040  1
    RHS1      constraint2_4041  1
    RHS1      constraint2_4042  1
    RHS1      constraint2_4043  1
    RHS1      constraint2_3920  1
    RHS1      constraint2_3921  1
    RHS1      constraint2_3922  1
    RHS1      constraint2_3923  1
BOUNDS
 UP BND1      Z_404_0_0  1
 UP BND1      Z_404_0_1  1
 UP BND1      Z_404_0_2  1
 UP BND1      Z_404_0_3  1
 UP BND1      Z_392_0_0  1
 UP BND1      Z_392_0_1  1
 UP BND1      Z_392_0_2  1
 UP BND1      Z_392_0_3  1
QUADOBJ
    Z_404_0_0  Z_392_0_0  -8.3461864604824756e-08
    Z_404_0_1  Z_392_0_1  -8.3461864604824756e-08
    Z_404_0_2  Z_392_0_2  -8.3461864604824756e-08
    Z_404_0_3  Z_392_0_3  -8.3461864604824756e-08
ENDATA
