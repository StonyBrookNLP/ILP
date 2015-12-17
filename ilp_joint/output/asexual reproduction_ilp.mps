NAME asexual reproduction_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_120
 L  constraint1_4930
 L  constraint2_120
 L  constraint2_121
 L  constraint2_122
 L  constraint2_123
 L  constraint2_4930
 L  constraint2_4931
 L  constraint2_4932
 L  constraint2_4933
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_12_0_0  OBJ       -8.3038032933193255e-05
    Z_12_0_0  constraint1_120  1
    Z_12_0_0  constraint2_120  1
    Z_12_0_1  OBJ       -4.1228832695336514e-03
    Z_12_0_1  constraint1_120  1
    Z_12_0_1  constraint2_121  1
    Z_12_0_2  OBJ       -8.6887889359916193e-01
    Z_12_0_2  constraint1_120  1
    Z_12_0_2  constraint2_122  1
    Z_12_0_3  OBJ       -1.9524275591352583e-03
    Z_12_0_3  constraint1_120  1
    Z_12_0_3  constraint2_123  1
    Z_12_0_4  OBJ       -2.4962757539235852e-02
    Z_12_0_4  constraint1_120  1
    Z_493_0_0  OBJ       -1.1225860698894695e-04
    Z_493_0_0  constraint1_4930  1
    Z_493_0_0  constraint2_4930  1
    Z_493_0_1  OBJ       -3.6782298535921049e-03
    Z_493_0_1  constraint1_4930  1
    Z_493_0_1  constraint2_4931  1
    Z_493_0_2  OBJ       -8.8414150084287524e-01
    Z_493_0_2  constraint1_4930  1
    Z_493_0_2  constraint2_4932  1
    Z_493_0_3  OBJ       -1.5828989747787142e-03
    Z_493_0_3  constraint1_4930  1
    Z_493_0_3  constraint2_4933  1
    Z_493_0_4  OBJ       -1.0485111721765047e-02
    Z_493_0_4  constraint1_4930  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_120  1
    RHS1      constraint1_4930  1
    RHS1      constraint2_120  1
    RHS1      constraint2_121  1
    RHS1      constraint2_122  1
    RHS1      constraint2_123  1
    RHS1      constraint2_4930  1
    RHS1      constraint2_4931  1
    RHS1      constraint2_4932  1
    RHS1      constraint2_4933  1
BOUNDS
 UP BND1      Z_12_0_0  1
 UP BND1      Z_12_0_1  1
 UP BND1      Z_12_0_2  1
 UP BND1      Z_12_0_3  1
 UP BND1      Z_12_0_4  1
 UP BND1      Z_493_0_0  1
 UP BND1      Z_493_0_1  1
 UP BND1      Z_493_0_2  1
 UP BND1      Z_493_0_3  1
 UP BND1      Z_493_0_4  1
QUADOBJ
    Z_12_0_0  Z_493_0_0  -9.1836734693877542e-03
    Z_12_0_1  Z_493_0_1  -9.1836734693877542e-03
    Z_12_0_2  Z_493_0_2  -9.1836734693877542e-03
    Z_12_0_3  Z_493_0_3  -9.1836734693877542e-03
    Z_12_0_4  Z_493_0_4  -9.1836734693877542e-03
ENDATA
