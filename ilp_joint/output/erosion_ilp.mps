NAME erosion_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_4910
 L  constraint2_4910
 L  constraint2_4911
 L  constraint2_4912
 L  constraint2_4913
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_491_0_0  OBJ       -2.6331652172345305e-03
    Z_491_0_0  constraint1_4910  1
    Z_491_0_0  constraint2_4910  1
    Z_491_0_1  OBJ       -1.9581306010044391e-03
    Z_491_0_1  constraint1_4910  1
    Z_491_0_1  constraint2_4911  1
    Z_491_0_2  OBJ       -6.9760180891026202e-01
    Z_491_0_2  constraint1_4910  1
    Z_491_0_2  constraint2_4912  1
    Z_491_0_3  OBJ       -3.3981426252184151e-03
    Z_491_0_3  constraint1_4910  1
    Z_491_0_3  constraint2_4913  1
    Z_491_0_4  OBJ       -1.9440875264628066e-01
    Z_491_0_4  constraint1_4910  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_4910  1
    RHS1      constraint2_4910  1
    RHS1      constraint2_4911  1
    RHS1      constraint2_4912  1
    RHS1      constraint2_4913  1
BOUNDS
 UP BND1      Z_491_0_0  1
 UP BND1      Z_491_0_1  1
 UP BND1      Z_491_0_2  1
 UP BND1      Z_491_0_3  1
 UP BND1      Z_491_0_4  1
ENDATA
