NAME friction_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_2570
 L  constraint2_2570
 L  constraint2_2571
 L  constraint2_2572
 L  constraint2_2573
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_257_0_0  OBJ       -2.5997267234443839e-04
    Z_257_0_0  constraint1_2570  1
    Z_257_0_0  constraint2_2570  1
    Z_257_0_1  OBJ       -2.6229546267064743e-03
    Z_257_0_1  constraint1_2570  1
    Z_257_0_1  constraint2_2571  1
    Z_257_0_2  OBJ       -7.7270672940460960e-01
    Z_257_0_2  constraint1_2570  1
    Z_257_0_2  constraint2_2572  1
    Z_257_0_3  OBJ       -1.9617384298122246e-03
    Z_257_0_3  constraint1_2570  1
    Z_257_0_3  constraint2_2573  1
    Z_257_0_4  OBJ       -1.2244860486652731e-01
    Z_257_0_4  constraint1_2570  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_2570  1
    RHS1      constraint2_2570  1
    RHS1      constraint2_2571  1
    RHS1      constraint2_2572  1
    RHS1      constraint2_2573  1
BOUNDS
 UP BND1      Z_257_0_0  1
 UP BND1      Z_257_0_1  1
 UP BND1      Z_257_0_2  1
 UP BND1      Z_257_0_3  1
 UP BND1      Z_257_0_4  1
ENDATA
