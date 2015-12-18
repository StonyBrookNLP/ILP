NAME convection_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_570
 L  constraint1_1390
 L  constraint1_5250
 L  constraint2_570
 L  constraint2_571
 L  constraint2_572
 L  constraint2_573
 L  constraint2_1390
 L  constraint2_1391
 L  constraint2_1392
 L  constraint2_1393
 L  constraint2_5250
 L  constraint2_5251
 L  constraint2_5252
 L  constraint2_5253
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_57_0_0  OBJ       -5.3552863684290335e-04
    Z_57_0_0  constraint1_570  1
    Z_57_0_0  constraint2_570  1
    Z_57_0_1  OBJ       -1.8372616287707371e-03
    Z_57_0_1  constraint1_570  1
    Z_57_0_1  constraint2_571  1
    Z_57_0_2  OBJ       -6.6769341509695779e-01
    Z_57_0_2  constraint1_570  1
    Z_57_0_2  constraint2_572  1
    Z_57_0_3  OBJ       -9.2004927376231397e-04
    Z_57_0_3  constraint1_570  1
    Z_57_0_3  constraint2_573  1
    Z_57_0_4  OBJ       -2.2901374536366620e-01
    Z_57_0_4  constraint1_570  1
    Z_139_0_0  OBJ       -4.5146799648339948e-04
    Z_139_0_0  constraint1_1390  1
    Z_139_0_0  constraint2_1390  1
    Z_139_0_1  OBJ       -5.1686865242034927e-03
    Z_139_0_1  constraint1_1390  1
    Z_139_0_1  constraint2_1391  1
    Z_139_0_2  OBJ       -5.9640618950281099e-01
    Z_139_0_2  constraint1_1390  1
    Z_139_0_2  constraint2_1392  1
    Z_139_0_3  OBJ       -1.1387557371543512e-03
    Z_139_0_3  constraint1_1390  1
    Z_139_0_3  constraint2_1393  1
    Z_139_0_4  OBJ       -2.9683490023934778e-01
    Z_139_0_4  constraint1_1390  1
    Z_525_0_0  OBJ       -1.6365542901913537e-04
    Z_525_0_0  constraint1_5250  1
    Z_525_0_0  constraint2_5250  1
    Z_525_0_1  OBJ       -7.2144664721194357e-03
    Z_525_0_1  constraint1_5250  1
    Z_525_0_1  constraint2_5251  1
    Z_525_0_2  OBJ       -7.8184055857160772e-01
    Z_525_0_2  constraint1_5250  1
    Z_525_0_2  constraint2_5252  1
    Z_525_0_3  OBJ       -3.3234016062635589e-04
    Z_525_0_3  constraint1_5250  1
    Z_525_0_3  constraint2_5253  1
    Z_525_0_4  OBJ       -1.1044897936662734e-01
    Z_525_0_4  constraint1_5250  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_570  1
    RHS1      constraint1_1390  1
    RHS1      constraint1_5250  1
    RHS1      constraint2_570  1
    RHS1      constraint2_571  1
    RHS1      constraint2_572  1
    RHS1      constraint2_573  1
    RHS1      constraint2_1390  1
    RHS1      constraint2_1391  1
    RHS1      constraint2_1392  1
    RHS1      constraint2_1393  1
    RHS1      constraint2_5250  1
    RHS1      constraint2_5251  1
    RHS1      constraint2_5252  1
    RHS1      constraint2_5253  1
BOUNDS
 UP BND1      Z_57_0_0  1
 UP BND1      Z_57_0_1  1
 UP BND1      Z_57_0_2  1
 UP BND1      Z_57_0_3  1
 UP BND1      Z_57_0_4  1
 UP BND1      Z_139_0_0  1
 UP BND1      Z_139_0_1  1
 UP BND1      Z_139_0_2  1
 UP BND1      Z_139_0_3  1
 UP BND1      Z_139_0_4  1
 UP BND1      Z_525_0_0  1
 UP BND1      Z_525_0_1  1
 UP BND1      Z_525_0_2  1
 UP BND1      Z_525_0_3  1
 UP BND1      Z_525_0_4  1
QUADOBJ
    Z_57_0_0  Z_139_0_0  -3.6998496936061973e-04
    Z_57_0_1  Z_139_0_1  -3.6998496936061973e-04
    Z_57_0_2  Z_139_0_2  -3.6998496936061973e-04
    Z_57_0_3  Z_139_0_3  -3.6998496936061973e-04
    Z_57_0_4  Z_139_0_4  -3.6998496936061973e-04
    Z_139_0_0  Z_525_0_0  -2.3469387755102038e-02
    Z_139_0_1  Z_525_0_1  -2.3469387755102038e-02
    Z_139_0_2  Z_525_0_2  -2.3469387755102038e-02
    Z_139_0_3  Z_525_0_3  -2.3469387755102038e-02
    Z_139_0_4  Z_525_0_4  -2.3469387755102038e-02
ENDATA
