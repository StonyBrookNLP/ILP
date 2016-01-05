NAME cross-pollination_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_6840
 L  constraint1_3350
 L  constraint2_6840
 L  constraint2_6841
 L  constraint2_6842
 L  constraint2_6843
 L  constraint2_3350
 L  constraint2_3351
 L  constraint2_3352
 L  constraint2_3353
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_684_0_0  OBJ       -3.8619721202233246e-05
    Z_684_0_0  constraint1_6840  1
    Z_684_0_0  constraint2_6840  1
    Z_684_0_1  OBJ       -1.2445918984077714e-02
    Z_684_0_1  constraint1_6840  1
    Z_684_0_1  constraint2_6841  1
    Z_684_0_2  OBJ       -8.2338839669205122e-01
    Z_684_0_2  constraint1_6840  1
    Z_684_0_2  constraint2_6842  1
    Z_684_0_3  OBJ       -1.6098580093817823e-03
    Z_684_0_3  constraint1_6840  1
    Z_684_0_3  constraint2_6843  1
    Z_684_0_4  OBJ       -6.2517206593287050e-02
    Z_684_0_4  constraint1_6840  1
    Z_335_0_0  OBJ       -7.0696940530172626e-05
    Z_335_0_0  constraint1_3350  1
    Z_335_0_0  constraint2_3350  1
    Z_335_0_1  OBJ       -3.3047181723700313e-03
    Z_335_0_1  constraint1_3350  1
    Z_335_0_1  constraint2_3351  1
    Z_335_0_2  OBJ       -8.4697627292229871e-01
    Z_335_0_2  constraint1_3350  1
    Z_335_0_2  constraint2_3352  1
    Z_335_0_3  OBJ       -1.0869515077239582e-03
    Z_335_0_3  constraint1_3350  1
    Z_335_0_3  constraint2_3353  1
    Z_335_0_4  OBJ       -4.8561360457077048e-02
    Z_335_0_4  constraint1_3350  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_6840  1
    RHS1      constraint1_3350  1
    RHS1      constraint2_6840  1
    RHS1      constraint2_6841  1
    RHS1      constraint2_6842  1
    RHS1      constraint2_6843  1
    RHS1      constraint2_3350  1
    RHS1      constraint2_3351  1
    RHS1      constraint2_3352  1
    RHS1      constraint2_3353  1
BOUNDS
 UP BND1      Z_684_0_0  1
 UP BND1      Z_684_0_1  1
 UP BND1      Z_684_0_2  1
 UP BND1      Z_684_0_3  1
 UP BND1      Z_684_0_4  1
 UP BND1      Z_335_0_0  1
 UP BND1      Z_335_0_1  1
 UP BND1      Z_335_0_2  1
 UP BND1      Z_335_0_3  1
 UP BND1      Z_335_0_4  1
QUADOBJ
    Z_684_0_0  Z_335_0_0  -1.9999999999999996e-01
    Z_684_0_1  Z_335_0_1  -1.9999999999999996e-01
    Z_684_0_2  Z_335_0_2  -1.9999999999999996e-01
    Z_684_0_3  Z_335_0_3  -1.9999999999999996e-01
ENDATA
