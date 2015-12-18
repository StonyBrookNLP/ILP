NAME carbon cycle_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_6610
 L  constraint2_6610
 L  constraint2_6611
 L  constraint2_6612
 L  constraint2_6613
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_661_0_0  OBJ       -2.9988960313135867e-03
    Z_661_0_0  constraint1_6610  1
    Z_661_0_0  constraint2_6610  1
    Z_661_0_1  OBJ       -5.7862170115254080e-03
    Z_661_0_1  constraint1_6610  1
    Z_661_0_1  constraint2_6611  1
    Z_661_0_2  OBJ       -8.6880477003870149e-01
    Z_661_0_2  constraint1_6610  1
    Z_661_0_2  constraint2_6612  1
    Z_661_0_3  OBJ       -4.6099765174591485e-03
    Z_661_0_3  constraint1_6610  1
    Z_661_0_3  constraint2_6613  1
    Z_661_0_4  OBJ       -1.7800140401000315e-02
    Z_661_0_4  constraint1_6610  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_6610  1
    RHS1      constraint2_6610  1
    RHS1      constraint2_6611  1
    RHS1      constraint2_6612  1
    RHS1      constraint2_6613  1
BOUNDS
 UP BND1      Z_661_0_0  1
 UP BND1      Z_661_0_1  1
 UP BND1      Z_661_0_2  1
 UP BND1      Z_661_0_3  1
 UP BND1      Z_661_0_4  1
ENDATA
