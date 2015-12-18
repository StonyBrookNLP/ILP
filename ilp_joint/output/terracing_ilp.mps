NAME terracing_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_2360
 L  constraint2_2360
 L  constraint2_2361
 L  constraint2_2362
 L  constraint2_2363
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_236_0_0  OBJ       -3.7127779263274399e-04
    Z_236_0_0  constraint1_2360  1
    Z_236_0_0  constraint2_2360  1
    Z_236_0_1  OBJ       -1.1481151601157283e-03
    Z_236_0_1  constraint1_2360  1
    Z_236_0_1  constraint2_2361  1
    Z_236_0_2  OBJ       -6.5835266463149716e-02
    Z_236_0_2  constraint1_2360  1
    Z_236_0_2  constraint2_2362  1
    Z_236_0_3  OBJ       -7.9105248840864095e-01
    Z_236_0_3  constraint1_2360  1
    Z_236_0_3  constraint2_2363  1
    Z_236_0_4  OBJ       -4.1592852175460972e-02
    Z_236_0_4  constraint1_2360  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_2360  1
    RHS1      constraint2_2360  1
    RHS1      constraint2_2361  1
    RHS1      constraint2_2362  1
    RHS1      constraint2_2363  1
BOUNDS
 UP BND1      Z_236_0_0  1
 UP BND1      Z_236_0_1  1
 UP BND1      Z_236_0_2  1
 UP BND1      Z_236_0_3  1
 UP BND1      Z_236_0_4  1
ENDATA
