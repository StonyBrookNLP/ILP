NAME sexual reproduction_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_4200
 L  constraint1_5070
 L  constraint1_2780
 L  constraint2_4200
 L  constraint2_4201
 L  constraint2_4202
 L  constraint2_4203
 L  constraint2_5070
 L  constraint2_5071
 L  constraint2_5072
 L  constraint2_5073
 L  constraint2_2780
 L  constraint2_2781
 L  constraint2_2782
 L  constraint2_2783
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_420_0_0  OBJ       -4.4614329705143499e-03
    Z_420_0_0  constraint1_4200  1
    Z_420_0_0  constraint2_4200  1
    Z_420_0_1  OBJ       -5.1192738503417080e-02
    Z_420_0_1  constraint1_4200  1
    Z_420_0_1  constraint2_4201  1
    Z_420_0_2  OBJ       -3.5747896966327741e-03
    Z_420_0_2  constraint1_4200  1
    Z_420_0_2  constraint2_4202  1
    Z_420_0_3  OBJ       -7.1691399494753394e-01
    Z_420_0_3  constraint1_4200  1
    Z_420_0_3  constraint2_4203  1
    Z_420_0_4  OBJ       -1.2385704388190190e-01
    Z_420_0_4  constraint1_4200  1
    Z_507_0_0  OBJ       -4.3190146205938766e-05
    Z_507_0_0  constraint1_5070  1
    Z_507_0_0  constraint2_5070  1
    Z_507_0_1  OBJ       -4.6521679684058586e-03
    Z_507_0_1  constraint1_5070  1
    Z_507_0_1  constraint2_5071  1
    Z_507_0_2  OBJ       -8.5307542801805991e-01
    Z_507_0_2  constraint1_5070  1
    Z_507_0_2  constraint2_5072  1
    Z_507_0_3  OBJ       -1.1627440439585595e-03
    Z_507_0_3  constraint1_5070  1
    Z_507_0_3  constraint2_5073  1
    Z_507_0_4  OBJ       -4.1066469823369700e-02
    Z_507_0_4  constraint1_5070  1
    Z_278_0_0  OBJ       -6.2680288358202607e-05
    Z_278_0_0  constraint1_2780  1
    Z_278_0_0  constraint2_2780  1
    Z_278_0_1  OBJ       -8.6975638491192612e-03
    Z_278_0_1  constraint1_2780  1
    Z_278_0_1  constraint2_2781  1
    Z_278_0_2  OBJ       -8.5281999300757239e-01
    Z_278_0_2  constraint1_2780  1
    Z_278_0_2  constraint2_2782  1
    Z_278_0_3  OBJ       -3.6893052421819642e-04
    Z_278_0_3  constraint1_2780  1
    Z_278_0_3  constraint2_2783  1
    Z_278_0_4  OBJ       -3.8050832330731914e-02
    Z_278_0_4  constraint1_2780  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_4200  1
    RHS1      constraint1_5070  1
    RHS1      constraint1_2780  1
    RHS1      constraint2_4200  1
    RHS1      constraint2_4201  1
    RHS1      constraint2_4202  1
    RHS1      constraint2_4203  1
    RHS1      constraint2_5070  1
    RHS1      constraint2_5071  1
    RHS1      constraint2_5072  1
    RHS1      constraint2_5073  1
    RHS1      constraint2_2780  1
    RHS1      constraint2_2781  1
    RHS1      constraint2_2782  1
    RHS1      constraint2_2783  1
BOUNDS
 UP BND1      Z_420_0_0  1
 UP BND1      Z_420_0_1  1
 UP BND1      Z_420_0_2  1
 UP BND1      Z_420_0_3  1
 UP BND1      Z_420_0_4  1
 UP BND1      Z_507_0_0  1
 UP BND1      Z_507_0_1  1
 UP BND1      Z_507_0_2  1
 UP BND1      Z_507_0_3  1
 UP BND1      Z_507_0_4  1
 UP BND1      Z_278_0_0  1
 UP BND1      Z_278_0_1  1
 UP BND1      Z_278_0_2  1
 UP BND1      Z_278_0_3  1
 UP BND1      Z_278_0_4  1
QUADOBJ
    Z_420_0_0  Z_278_0_0  -3.4626038781163424e-05
    Z_420_0_1  Z_278_0_1  -3.4626038781163424e-05
    Z_420_0_2  Z_278_0_2  -3.4626038781163424e-05
    Z_420_0_3  Z_278_0_3  -3.4626038781163424e-05
    Z_420_0_4  Z_278_0_4  -3.4626038781163424e-05
    Z_507_0_0  Z_278_0_0  -9.1836734693877542e-03
    Z_507_0_1  Z_278_0_1  -9.1836734693877542e-03
    Z_507_0_2  Z_278_0_2  -9.1836734693877542e-03
    Z_507_0_3  Z_278_0_3  -9.1836734693877542e-03
    Z_507_0_4  Z_278_0_4  -9.1836734693877542e-03
ENDATA
