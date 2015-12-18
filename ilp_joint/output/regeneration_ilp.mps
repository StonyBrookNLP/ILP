NAME regeneration_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_200
 L  constraint2_200
 L  constraint2_201
 L  constraint2_202
 L  constraint2_203
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_20_0_0  OBJ       -4.3536903418142890e-03
    Z_20_0_0  constraint1_200  1
    Z_20_0_0  constraint2_200  1
    Z_20_0_1  OBJ       -1.9666842107702062e-03
    Z_20_0_1  constraint1_200  1
    Z_20_0_1  constraint2_201  1
    Z_20_0_2  OBJ       -6.2676038144514334e-01
    Z_20_0_2  constraint1_200  1
    Z_20_0_2  constraint2_202  1
    Z_20_0_3  OBJ       -1.5419262535333758e-02
    Z_20_0_3  constraint1_200  1
    Z_20_0_3  constraint2_203  1
    Z_20_0_4  OBJ       -2.5149998146693858e-01
    Z_20_0_4  constraint1_200  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_200  1
    RHS1      constraint2_200  1
    RHS1      constraint2_201  1
    RHS1      constraint2_202  1
    RHS1      constraint2_203  1
BOUNDS
 UP BND1      Z_20_0_0  1
 UP BND1      Z_20_0_1  1
 UP BND1      Z_20_0_2  1
 UP BND1      Z_20_0_3  1
 UP BND1      Z_20_0_4  1
ENDATA
