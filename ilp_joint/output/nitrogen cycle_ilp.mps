NAME nitrogen cycle_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_3020
 L  constraint2_3020
 L  constraint2_3021
 L  constraint2_3022
 L  constraint2_3023
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_302_0_0  OBJ       -2.2511403045448407e-03
    Z_302_0_0  constraint1_3020  1
    Z_302_0_0  constraint2_3020  1
    Z_302_0_1  OBJ       -5.7827354047273244e-03
    Z_302_0_1  constraint1_3020  1
    Z_302_0_1  constraint2_3021  1
    Z_302_0_2  OBJ       -8.2902145344578082e-01
    Z_302_0_2  constraint1_3020  1
    Z_302_0_2  constraint2_3022  1
    Z_302_0_3  OBJ       -7.0684895656644223e-03
    Z_302_0_3  constraint1_3020  1
    Z_302_0_3  constraint2_3023  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_3020  1
    RHS1      constraint2_3020  1
    RHS1      constraint2_3021  1
    RHS1      constraint2_3022  1
    RHS1      constraint2_3023  1
BOUNDS
 UP BND1      Z_302_0_0  1
 UP BND1      Z_302_0_1  1
 UP BND1      Z_302_0_2  1
 UP BND1      Z_302_0_3  1
ENDATA
