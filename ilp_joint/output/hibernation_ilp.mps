NAME hibernation_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_5780
 L  constraint1_1850
 L  constraint1_4980
 L  constraint2_5780
 L  constraint2_5781
 L  constraint2_5782
 L  constraint2_5783
 L  constraint2_1850
 L  constraint2_1851
 L  constraint2_1852
 L  constraint2_1853
 L  constraint2_4980
 L  constraint2_4981
 L  constraint2_4982
 L  constraint2_4983
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_578_0_0  OBJ       -2.8635874801360397e-02
    Z_578_0_0  constraint1_5780  1
    Z_578_0_0  constraint2_5780  1
    Z_578_0_1  OBJ       -1.7974775917508831e-01
    Z_578_0_1  constraint1_5780  1
    Z_578_0_1  constraint2_5781  1
    Z_578_0_2  OBJ       -6.6058451743859131e-02
    Z_578_0_2  constraint1_5780  1
    Z_578_0_2  constraint2_5782  1
    Z_578_0_3  OBJ       -3.4574188340936229e-02
    Z_578_0_3  constraint1_5780  1
    Z_578_0_3  constraint2_5783  1
    Z_185_0_0  OBJ       -4.4138792966291421e-03
    Z_185_0_0  constraint1_1850  1
    Z_185_0_0  constraint2_1850  1
    Z_185_0_1  OBJ       -3.1261920321039041e-02
    Z_185_0_1  constraint1_1850  1
    Z_185_0_1  constraint2_1851  1
    Z_185_0_2  OBJ       -2.7381564592373975e-01
    Z_185_0_2  constraint1_1850  1
    Z_185_0_2  constraint2_1852  1
    Z_185_0_3  OBJ       -7.2647709698793861e-01
    Z_185_0_3  constraint1_1850  1
    Z_185_0_3  constraint2_1853  1
    Z_498_0_0  OBJ       -7.6768448790877188e-03
    Z_498_0_0  constraint1_4980  1
    Z_498_0_0  constraint2_4980  1
    Z_498_0_1  OBJ       -6.5439749219973586e-01
    Z_498_0_1  constraint1_4980  1
    Z_498_0_1  constraint2_4981  1
    Z_498_0_2  OBJ       -1.7282886315696144e-02
    Z_498_0_2  constraint1_4980  1
    Z_498_0_2  constraint2_4982  1
    Z_498_0_3  OBJ       -4.8580680618860762e-02
    Z_498_0_3  constraint1_4980  1
    Z_498_0_3  constraint2_4983  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_5780  1
    RHS1      constraint1_1850  1
    RHS1      constraint1_4980  1
    RHS1      constraint2_5780  1
    RHS1      constraint2_5781  1
    RHS1      constraint2_5782  1
    RHS1      constraint2_5783  1
    RHS1      constraint2_1850  1
    RHS1      constraint2_1851  1
    RHS1      constraint2_1852  1
    RHS1      constraint2_1853  1
    RHS1      constraint2_4980  1
    RHS1      constraint2_4981  1
    RHS1      constraint2_4982  1
    RHS1      constraint2_4983  1
BOUNDS
 UP BND1      Z_578_0_0  1
 UP BND1      Z_578_0_1  1
 UP BND1      Z_578_0_2  1
 UP BND1      Z_578_0_3  1
 UP BND1      Z_185_0_0  1
 UP BND1      Z_185_0_1  1
 UP BND1      Z_185_0_2  1
 UP BND1      Z_185_0_3  1
 UP BND1      Z_498_0_0  1
 UP BND1      Z_498_0_1  1
 UP BND1      Z_498_0_2  1
 UP BND1      Z_498_0_3  1
QUADOBJ
    Z_578_0_0  Z_185_0_0  -2.8883684061341956e-02
    Z_578_0_0  Z_498_0_0  -1.1807589746445666e-02
    Z_578_0_1  Z_185_0_1  -2.8883684061341956e-02
    Z_578_0_1  Z_498_0_1  -1.1807589746445666e-02
    Z_578_0_2  Z_185_0_2  -2.8883684061341956e-02
    Z_578_0_2  Z_498_0_2  -1.1807589746445666e-02
    Z_578_0_3  Z_185_0_3  -2.8883684061341956e-02
    Z_578_0_3  Z_498_0_3  -1.1807589746445666e-02
ENDATA
