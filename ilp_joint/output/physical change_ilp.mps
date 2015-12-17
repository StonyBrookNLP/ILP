NAME physical change_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_3850
 L  constraint2_3850
 L  constraint2_3851
 L  constraint2_3852
 L  constraint2_3853
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_385_0_0  OBJ       -1.3519932718175332e-02
    Z_385_0_0  constraint1_3850  1
    Z_385_0_0  constraint2_3850  1
    Z_385_0_1  OBJ       -7.3039105026478687e-02
    Z_385_0_1  constraint1_3850  1
    Z_385_0_1  constraint2_3851  1
    Z_385_0_2  OBJ       -4.4920693015595030e-02
    Z_385_0_2  constraint1_3850  1
    Z_385_0_2  constraint2_3852  1
    Z_385_0_3  OBJ       -3.1477005368769091e-03
    Z_385_0_3  constraint1_3850  1
    Z_385_0_3  constraint2_3853  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_3850  1
    RHS1      constraint2_3850  1
    RHS1      constraint2_3851  1
    RHS1      constraint2_3852  1
    RHS1      constraint2_3853  1
BOUNDS
 UP BND1      Z_385_0_0  1
 UP BND1      Z_385_0_1  1
 UP BND1      Z_385_0_2  1
 UP BND1      Z_385_0_3  1
ENDATA
