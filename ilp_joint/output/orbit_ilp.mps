NAME orbit_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_5500
 L  constraint2_5500
 L  constraint2_5501
 L  constraint2_5502
 L  constraint2_5503
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_550_0_0  OBJ       -6.4734169010249518e-02
    Z_550_0_0  constraint1_5500  1
    Z_550_0_0  constraint2_5500  1
    Z_550_0_1  OBJ       -7.6624243117941068e-02
    Z_550_0_1  constraint1_5500  1
    Z_550_0_1  constraint2_5501  1
    Z_550_0_2  OBJ       -2.5778840678904204e-02
    Z_550_0_2  constraint1_5500  1
    Z_550_0_2  constraint2_5502  1
    Z_550_0_3  OBJ       -5.9469343708864336e-02
    Z_550_0_3  constraint1_5500  1
    Z_550_0_3  constraint2_5503  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_5500  1
    RHS1      constraint2_5500  1
    RHS1      constraint2_5501  1
    RHS1      constraint2_5502  1
    RHS1      constraint2_5503  1
BOUNDS
 UP BND1      Z_550_0_0  1
 UP BND1      Z_550_0_1  1
 UP BND1      Z_550_0_2  1
 UP BND1      Z_550_0_3  1
ENDATA
