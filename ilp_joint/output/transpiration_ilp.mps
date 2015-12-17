NAME transpiration_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_5372
 L  constraint1_831
 L  constraint2_5370
 L  constraint2_5371
 L  constraint2_5372
 L  constraint2_5373
 L  constraint2_830
 L  constraint2_831
 L  constraint2_832
 L  constraint2_833
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_537_2_0  OBJ       -7.9283667931668526e-04
    Z_537_2_0  constraint1_5372  1
    Z_537_2_0  constraint2_5370  1
    Z_537_2_1  OBJ       -3.1391372225949760e-03
    Z_537_2_1  constraint1_5372  1
    Z_537_2_1  constraint2_5371  1
    Z_537_2_2  OBJ       -8.6769244949759039e-01
    Z_537_2_2  constraint1_5372  1
    Z_537_2_2  constraint2_5372  1
    Z_537_2_3  OBJ       -2.1183420805057189e-02
    Z_537_2_3  constraint1_5372  1
    Z_537_2_3  constraint2_5373  1
    Z_537_2_4  OBJ       -7.1921557954408239e-03
    Z_537_2_4  constraint1_5372  1
    Z_83_1_0  OBJ       -8.7993718588314786e-04
    Z_83_1_0  constraint1_831  1
    Z_83_1_0  constraint2_830  1
    Z_83_1_1  OBJ       -3.7427038129354130e-03
    Z_83_1_1  constraint1_831  1
    Z_83_1_1  constraint2_831  1
    Z_83_1_2  OBJ       -8.5773257895421107e-01
    Z_83_1_2  constraint1_831  1
    Z_83_1_2  constraint2_832  1
    Z_83_1_3  OBJ       -2.0328468318910563e-02
    Z_83_1_3  constraint1_831  1
    Z_83_1_3  constraint2_833  1
    Z_83_1_4  OBJ       -1.7316311728059888e-02
    Z_83_1_4  constraint1_831  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_5372  1
    RHS1      constraint1_831  1
    RHS1      constraint2_5370  1
    RHS1      constraint2_5371  1
    RHS1      constraint2_5372  1
    RHS1      constraint2_5373  1
    RHS1      constraint2_830  1
    RHS1      constraint2_831  1
    RHS1      constraint2_832  1
    RHS1      constraint2_833  1
BOUNDS
 UP BND1      Z_537_2_0  1
 UP BND1      Z_537_2_1  1
 UP BND1      Z_537_2_2  1
 UP BND1      Z_537_2_3  1
 UP BND1      Z_537_2_4  1
 UP BND1      Z_83_1_0  1
 UP BND1      Z_83_1_1  1
 UP BND1      Z_83_1_2  1
 UP BND1      Z_83_1_3  1
 UP BND1      Z_83_1_4  1
QUADOBJ
    Z_537_2_0  Z_83_1_0  -1.9999999999999996e-01
    Z_537_2_1  Z_83_1_1  -1.9999999999999996e-01
    Z_537_2_2  Z_83_1_2  -1.9999999999999996e-01
    Z_537_2_3  Z_83_1_3  -1.9999999999999996e-01
    Z_537_2_4  Z_83_1_4  -1.9999999999999996e-01
ENDATA
