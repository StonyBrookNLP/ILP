NAME shedding_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_850
 L  constraint2_850
 L  constraint2_851
 L  constraint2_852
 L  constraint2_853
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_85_0_0  OBJ       -4.7967660056613150e-04
    Z_85_0_0  constraint1_850  1
    Z_85_0_0  constraint2_850  1
    Z_85_0_1  OBJ       -2.4351117447499000e-03
    Z_85_0_1  constraint1_850  1
    Z_85_0_1  constraint2_851  1
    Z_85_0_2  OBJ       -8.7022811079652118e-01
    Z_85_0_2  constraint1_850  1
    Z_85_0_2  constraint2_852  1
    Z_85_0_3  OBJ       -9.0580786057397505e-04
    Z_85_0_3  constraint1_850  1
    Z_85_0_3  constraint2_853  1
    Z_85_0_4  OBJ       -2.5951292997588818e-02
    Z_85_0_4  constraint1_850  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_850  1
    RHS1      constraint2_850  1
    RHS1      constraint2_851  1
    RHS1      constraint2_852  1
    RHS1      constraint2_853  1
BOUNDS
 UP BND1      Z_85_0_0  1
 UP BND1      Z_85_0_1  1
 UP BND1      Z_85_0_2  1
 UP BND1      Z_85_0_3  1
 UP BND1      Z_85_0_4  1
ENDATA
