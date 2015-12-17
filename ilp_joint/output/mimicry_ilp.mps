NAME mimicry_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_5020
 L  constraint1_4800
 L  constraint2_5020
 L  constraint2_5021
 L  constraint2_5022
 L  constraint2_5023
 L  constraint2_4800
 L  constraint2_4801
 L  constraint2_4802
 L  constraint2_4803
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_502_0_0  OBJ       -5.3306582319427894e-05
    Z_502_0_0  constraint1_5020  1
    Z_502_0_0  constraint2_5020  1
    Z_502_0_1  OBJ       -3.1018943102358474e-03
    Z_502_0_1  constraint1_5020  1
    Z_502_0_1  constraint2_5021  1
    Z_502_0_2  OBJ       -8.7521307313959873e-01
    Z_502_0_2  constraint1_5020  1
    Z_502_0_2  constraint2_5022  1
    Z_502_0_3  OBJ       -1.3942340054183115e-03
    Z_502_0_3  constraint1_5020  1
    Z_502_0_3  constraint2_5023  1
    Z_502_0_4  OBJ       -2.0237491962427641e-02
    Z_502_0_4  constraint1_5020  1
    Z_480_0_0  OBJ       -4.4754975669665359e-05
    Z_480_0_0  constraint1_4800  1
    Z_480_0_0  constraint2_4800  1
    Z_480_0_1  OBJ       -1.1093257559447783e-03
    Z_480_0_1  constraint1_4800  1
    Z_480_0_1  constraint2_4801  1
    Z_480_0_2  OBJ       -8.5928456267014586e-01
    Z_480_0_2  constraint1_4800  1
    Z_480_0_2  constraint2_4802  1
    Z_480_0_3  OBJ       -2.4908016071739604e-03
    Z_480_0_3  constraint1_4800  1
    Z_480_0_3  constraint2_4803  1
    Z_480_0_4  OBJ       -3.7070554991065860e-02
    Z_480_0_4  constraint1_4800  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_5020  1
    RHS1      constraint1_4800  1
    RHS1      constraint2_5020  1
    RHS1      constraint2_5021  1
    RHS1      constraint2_5022  1
    RHS1      constraint2_5023  1
    RHS1      constraint2_4800  1
    RHS1      constraint2_4801  1
    RHS1      constraint2_4802  1
    RHS1      constraint2_4803  1
BOUNDS
 UP BND1      Z_502_0_0  1
 UP BND1      Z_502_0_1  1
 UP BND1      Z_502_0_2  1
 UP BND1      Z_502_0_3  1
 UP BND1      Z_502_0_4  1
 UP BND1      Z_480_0_0  1
 UP BND1      Z_480_0_1  1
 UP BND1      Z_480_0_2  1
 UP BND1      Z_480_0_3  1
 UP BND1      Z_480_0_4  1
ENDATA
