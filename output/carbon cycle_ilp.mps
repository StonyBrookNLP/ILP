NAME carbon cycle_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_3570
 L  constraint2_2190
 L  constraint2_2191
 L  constraint2_2192
 L  constraint2_2193
 L  constraint2_3570
 L  constraint2_3571
 L  constraint2_3572
 L  constraint2_3573
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_357_0_0  OBJ       -1.0293486791871306e-03
    Z_357_0_0  constraint1_3570  1
    Z_357_0_0  constraint2_3570  1
    Z_357_0_1  OBJ       -7.8540554647587007e-03
    Z_357_0_1  constraint1_3570  1
    Z_357_0_1  constraint2_3571  1
    Z_357_0_2  OBJ       -7.1414172388443109e-01
    Z_357_0_2  constraint1_3570  1
    Z_357_0_2  constraint2_3572  1
    Z_357_0_3  OBJ       -8.1187053025765198e-03
    Z_357_0_3  constraint1_3570  1
    Z_357_0_3  constraint2_3573  1
    Z_357_0_4  OBJ       -1.6885616666904665e-01
    Z_357_0_4  constraint1_3570  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_3570  1
    RHS1      constraint2_2190  1
    RHS1      constraint2_2191  1
    RHS1      constraint2_2192  1
    RHS1      constraint2_2193  1
    RHS1      constraint2_3570  1
    RHS1      constraint2_3571  1
    RHS1      constraint2_3572  1
    RHS1      constraint2_3573  1
BOUNDS
 UP BND1      Z_357_0_0  1
 UP BND1      Z_357_0_1  1
 UP BND1      Z_357_0_2  1
 UP BND1      Z_357_0_3  1
 UP BND1      Z_357_0_4  1
ENDATA
