NAME terracing_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_4980
 L  constraint2_4980
 L  constraint2_4981
 L  constraint2_4982
 L  constraint2_4983
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_498_0_0  OBJ       -1.5085977021218888e-04
    Z_498_0_0  constraint1_4980  1
    Z_498_0_0  constraint2_4980  1
    Z_498_0_1  OBJ       -2.1448962523636103e-03
    Z_498_0_1  constraint1_4980  1
    Z_498_0_1  constraint2_4981  1
    Z_498_0_2  OBJ       -7.5271979922741386e-02
    Z_498_0_2  constraint1_4980  1
    Z_498_0_2  constraint2_4982  1
    Z_498_0_3  OBJ       -7.7408632212939132e-01
    Z_498_0_3  constraint1_4980  1
    Z_498_0_3  constraint2_4983  1
    Z_498_0_4  OBJ       -4.8345941925291486e-02
    Z_498_0_4  constraint1_4980  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_4980  1
    RHS1      constraint2_4980  1
    RHS1      constraint2_4981  1
    RHS1      constraint2_4982  1
    RHS1      constraint2_4983  1
BOUNDS
 UP BND1      Z_498_0_0  1
 UP BND1      Z_498_0_1  1
 UP BND1      Z_498_0_2  1
 UP BND1      Z_498_0_3  1
 UP BND1      Z_498_0_4  1
ENDATA
