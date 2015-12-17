NAME nitrogen cycle_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_3020
 L  constraint1_5540
 L  constraint2_3020
 L  constraint2_3021
 L  constraint2_3022
 L  constraint2_3023
 L  constraint2_5540
 L  constraint2_5541
 L  constraint2_5542
 L  constraint2_5543
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_302_0_0  OBJ       -2.1972908011851173e-04
    Z_302_0_0  constraint1_3020  1
    Z_302_0_0  constraint2_3020  1
    Z_302_0_1  OBJ       -7.1616204618906430e-04
    Z_302_0_1  constraint1_3020  1
    Z_302_0_1  constraint2_3021  1
    Z_302_0_2  OBJ       -7.1005409715811740e-01
    Z_302_0_2  constraint1_3020  1
    Z_302_0_2  constraint2_3022  1
    Z_302_0_3  OBJ       -1.0406265463415154e-03
    Z_302_0_3  constraint1_3020  1
    Z_302_0_3  constraint2_3023  1
    Z_302_0_4  OBJ       -1.8796938516923350e-01
    Z_302_0_4  constraint1_3020  1
    Z_554_0_0  OBJ       -2.0278494627885223e-03
    Z_554_0_0  constraint1_5540  1
    Z_554_0_0  constraint2_5540  1
    Z_554_0_1  OBJ       -1.6897546208387857e-03
    Z_554_0_1  constraint1_5540  1
    Z_554_0_1  constraint2_5541  1
    Z_554_0_2  OBJ       -3.9973795219951652e-01
    Z_554_0_2  constraint1_5540  1
    Z_554_0_2  constraint2_5542  1
    Z_554_0_3  OBJ       -1.7649263325185953e-03
    Z_554_0_3  constraint1_5540  1
    Z_554_0_3  constraint2_5543  1
    Z_554_0_4  OBJ       -4.9477951738433756e-01
    Z_554_0_4  constraint1_5540  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_3020  1
    RHS1      constraint1_5540  1
    RHS1      constraint2_3020  1
    RHS1      constraint2_3021  1
    RHS1      constraint2_3022  1
    RHS1      constraint2_3023  1
    RHS1      constraint2_5540  1
    RHS1      constraint2_5541  1
    RHS1      constraint2_5542  1
    RHS1      constraint2_5543  1
BOUNDS
 UP BND1      Z_302_0_0  1
 UP BND1      Z_302_0_1  1
 UP BND1      Z_302_0_2  1
 UP BND1      Z_302_0_3  1
 UP BND1      Z_302_0_4  1
 UP BND1      Z_554_0_0  1
 UP BND1      Z_554_0_1  1
 UP BND1      Z_554_0_2  1
 UP BND1      Z_554_0_3  1
 UP BND1      Z_554_0_4  1
QUADOBJ
    Z_302_0_0  Z_554_0_0  -2.4913072355055462e-02
    Z_302_0_1  Z_554_0_1  -2.4913072355055462e-02
    Z_302_0_2  Z_554_0_2  -2.4913072355055462e-02
    Z_302_0_3  Z_554_0_3  -2.4913072355055462e-02
    Z_302_0_4  Z_554_0_4  -2.4913072355055462e-02
ENDATA
