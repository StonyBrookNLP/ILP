NAME hibernation_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_3440
 L  constraint2_3440
 L  constraint2_3441
 L  constraint2_3442
 L  constraint2_3443
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_344_0_0  OBJ       -1.5431608971754550e-02
    Z_344_0_0  constraint1_3440  1
    Z_344_0_0  constraint2_3440  1
    Z_344_0_1  OBJ       -8.3705471860038072e-01
    Z_344_0_1  constraint1_3440  1
    Z_344_0_1  constraint2_3441  1
    Z_344_0_2  OBJ       -3.9555064852688435e-03
    Z_344_0_2  constraint1_3440  1
    Z_344_0_2  constraint2_3442  1
    Z_344_0_3  OBJ       -1.1505787716153890e-02
    Z_344_0_3  constraint1_3440  1
    Z_344_0_3  constraint2_3443  1
    Z_344_0_4  OBJ       -3.2052378226442101e-02
    Z_344_0_4  constraint1_3440  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_3440  1
    RHS1      constraint2_3440  1
    RHS1      constraint2_3441  1
    RHS1      constraint2_3442  1
    RHS1      constraint2_3443  1
BOUNDS
 UP BND1      Z_344_0_0  1
 UP BND1      Z_344_0_1  1
 UP BND1      Z_344_0_2  1
 UP BND1      Z_344_0_3  1
 UP BND1      Z_344_0_4  1
ENDATA
