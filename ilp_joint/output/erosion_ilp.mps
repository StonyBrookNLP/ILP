NAME erosion_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_4200
 L  constraint1_2560
 L  constraint1_2580
 L  constraint2_290
 L  constraint2_291
 L  constraint2_292
 L  constraint2_293
 L  constraint2_4420
 L  constraint2_4421
 L  constraint2_4422
 L  constraint2_4423
 L  constraint2_6790
 L  constraint2_6791
 L  constraint2_6792
 L  constraint2_6793
 L  constraint2_3960
 L  constraint2_3961
 L  constraint2_3962
 L  constraint2_3963
 L  constraint2_5360
 L  constraint2_5361
 L  constraint2_5362
 L  constraint2_5363
 L  constraint2_4200
 L  constraint2_4201
 L  constraint2_4202
 L  constraint2_4203
 L  constraint2_2560
 L  constraint2_2561
 L  constraint2_2562
 L  constraint2_2563
 L  constraint2_2580
 L  constraint2_2581
 L  constraint2_2582
 L  constraint2_2583
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_420_0_0  OBJ       -3.1540507159183976e-04
    Z_420_0_0  constraint1_4200  1
    Z_420_0_0  constraint2_4200  1
    Z_420_0_1  OBJ       -8.1532560151771378e-04
    Z_420_0_1  constraint1_4200  1
    Z_420_0_1  constraint2_4201  1
    Z_420_0_2  OBJ       -7.4173243476273099e-01
    Z_420_0_2  constraint1_4200  1
    Z_420_0_2  constraint2_4202  1
    Z_420_0_3  OBJ       -7.9389179231445799e-04
    Z_420_0_3  constraint1_4200  1
    Z_420_0_3  constraint2_4203  1
    Z_420_0_4  OBJ       -1.5634294277184502e-01
    Z_420_0_4  constraint1_4200  1
    Z_256_0_0  OBJ       -1.5217736080186256e-03
    Z_256_0_0  constraint1_2560  1
    Z_256_0_0  constraint2_2560  1
    Z_256_0_1  OBJ       -1.7307940049720450e-03
    Z_256_0_1  constraint1_2560  1
    Z_256_0_1  constraint2_2561  1
    Z_256_0_2  OBJ       -3.9014756804910672e-01
    Z_256_0_2  constraint1_2560  1
    Z_256_0_2  constraint2_2562  1
    Z_256_0_3  OBJ       -2.4518492507814888e-03
    Z_256_0_3  constraint1_2560  1
    Z_256_0_3  constraint2_2563  1
    Z_256_0_4  OBJ       -5.0414801508712104e-01
    Z_256_0_4  constraint1_2560  1
    Z_258_0_0  OBJ       -1.5773047829424557e-03
    Z_258_0_0  constraint1_2580  1
    Z_258_0_0  constraint2_2580  1
    Z_258_0_1  OBJ       -7.2607164269786802e-04
    Z_258_0_1  constraint1_2580  1
    Z_258_0_1  constraint2_2581  1
    Z_258_0_2  OBJ       -6.3704987905634436e-01
    Z_258_0_2  constraint1_2580  1
    Z_258_0_2  constraint2_2582  1
    Z_258_0_3  OBJ       -4.4244973973892841e-03
    Z_258_0_3  constraint1_2580  1
    Z_258_0_3  constraint2_2583  1
    Z_258_0_4  OBJ       -2.5622224712062608e-01
    Z_258_0_4  constraint1_2580  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_4200  1
    RHS1      constraint1_2560  1
    RHS1      constraint1_2580  1
    RHS1      constraint2_290  1
    RHS1      constraint2_291  1
    RHS1      constraint2_292  1
    RHS1      constraint2_293  1
    RHS1      constraint2_4420  1
    RHS1      constraint2_4421  1
    RHS1      constraint2_4422  1
    RHS1      constraint2_4423  1
    RHS1      constraint2_6790  1
    RHS1      constraint2_6791  1
    RHS1      constraint2_6792  1
    RHS1      constraint2_6793  1
    RHS1      constraint2_3960  1
    RHS1      constraint2_3961  1
    RHS1      constraint2_3962  1
    RHS1      constraint2_3963  1
    RHS1      constraint2_5360  1
    RHS1      constraint2_5361  1
    RHS1      constraint2_5362  1
    RHS1      constraint2_5363  1
    RHS1      constraint2_4200  1
    RHS1      constraint2_4201  1
    RHS1      constraint2_4202  1
    RHS1      constraint2_4203  1
    RHS1      constraint2_2560  1
    RHS1      constraint2_2561  1
    RHS1      constraint2_2562  1
    RHS1      constraint2_2563  1
    RHS1      constraint2_2580  1
    RHS1      constraint2_2581  1
    RHS1      constraint2_2582  1
    RHS1      constraint2_2583  1
BOUNDS
 UP BND1      Z_420_0_0  1
 UP BND1      Z_420_0_1  1
 UP BND1      Z_420_0_2  1
 UP BND1      Z_420_0_3  1
 UP BND1      Z_420_0_4  1
 UP BND1      Z_256_0_0  1
 UP BND1      Z_256_0_1  1
 UP BND1      Z_256_0_2  1
 UP BND1      Z_256_0_3  1
 UP BND1      Z_256_0_4  1
 UP BND1      Z_258_0_0  1
 UP BND1      Z_258_0_1  1
 UP BND1      Z_258_0_2  1
 UP BND1      Z_258_0_3  1
 UP BND1      Z_258_0_4  1
QUADOBJ
    Z_256_0_0  Z_258_0_0  -9.9999999999999978e-02
    Z_256_0_1  Z_258_0_1  -9.9999999999999978e-02
    Z_256_0_2  Z_258_0_2  -9.9999999999999978e-02
    Z_256_0_3  Z_258_0_3  -9.9999999999999978e-02
ENDATA
