NAME chemical change_srl_ilp
* Max problem is converted into Min one
ROWS
 N  OBJ
 L  constraint1_3840
 L  constraint1_2830
 L  constraint1_2080
 L  constraint1_2082
 L  constraint1_2081
 L  constraint2_3840
 L  constraint2_3841
 L  constraint2_3842
 L  constraint2_3843
 L  constraint2_2830
 L  constraint2_2831
 L  constraint2_2832
 L  constraint2_2833
 L  constraint2_2080
 L  constraint2_2081
 L  constraint2_2082
 L  constraint2_2083
COLUMNS
    MARKER    'MARKER'                 'INTORG'
    Z_384_0_0  OBJ       -4.5359248575792542e-04
    Z_384_0_0  constraint1_3840  1
    Z_384_0_0  constraint2_3840  1
    Z_384_0_1  OBJ       -5.9560479215520067e-02
    Z_384_0_1  constraint1_3840  1
    Z_384_0_1  constraint2_3841  1
    Z_384_0_2  OBJ       -2.6503539163800754e-01
    Z_384_0_2  constraint1_3840  1
    Z_384_0_2  constraint2_3842  1
    Z_384_0_3  OBJ       -1.1021395691641169e-02
    Z_384_0_3  constraint1_3840  1
    Z_384_0_3  constraint2_3843  1
    Z_283_0_0  OBJ       -1.5129052798131459e-02
    Z_283_0_0  constraint1_2830  1
    Z_283_0_0  constraint2_2830  1
    Z_283_0_1  OBJ       -4.7503676796620299e-02
    Z_283_0_1  constraint1_2830  1
    Z_283_0_1  constraint2_2831  1
    Z_283_0_2  OBJ       -9.9358974213031078e-03
    Z_283_0_2  constraint1_2830  1
    Z_283_0_2  constraint2_2832  1
    Z_283_0_3  OBJ       -8.3687938780544046e-03
    Z_283_0_3  constraint1_2830  1
    Z_283_0_3  constraint2_2833  1
    Z_208_0_0  OBJ       -2.2503038320295875e-03
    Z_208_0_0  constraint1_2080  1
    Z_208_0_0  constraint2_2080  1
    Z_208_0_1  OBJ       -1.1719647106638009e-02
    Z_208_0_1  constraint1_2080  1
    Z_208_0_1  constraint2_2081  1
    Z_208_0_2  OBJ       -7.9350900591800855e-01
    Z_208_0_2  constraint1_2080  1
    Z_208_0_2  constraint2_2082  1
    Z_208_0_3  OBJ       -1.5345120147792936e-02
    Z_208_0_3  constraint1_2080  1
    Z_208_0_3  constraint2_2083  1
    Z_208_2_0  OBJ       -4.1252242868956535e-01
    Z_208_2_0  constraint1_2082  1
    Z_208_2_0  constraint2_2080  1
    Z_208_2_1  OBJ       -1.3082940639195267e-01
    Z_208_2_1  constraint1_2082  1
    Z_208_2_1  constraint2_2081  1
    Z_208_2_2  OBJ       -1.7061252271084983e-02
    Z_208_2_2  constraint1_2082  1
    Z_208_2_2  constraint2_2082  1
    Z_208_2_3  OBJ       -7.3208182075851239e-02
    Z_208_2_3  constraint1_2082  1
    Z_208_2_3  constraint2_2083  1
    Z_208_1_0  OBJ       -2.2503038320295875e-03
    Z_208_1_0  constraint1_2081  1
    Z_208_1_0  constraint2_2080  1
    Z_208_1_1  OBJ       -1.1719647106638009e-02
    Z_208_1_1  constraint1_2081  1
    Z_208_1_1  constraint2_2081  1
    Z_208_1_2  OBJ       -7.9350900591800855e-01
    Z_208_1_2  constraint1_2081  1
    Z_208_1_2  constraint2_2082  1
    Z_208_1_3  OBJ       -1.5345120147792936e-02
    Z_208_1_3  constraint1_2081  1
    Z_208_1_3  constraint2_2083  1
    MARKER    'MARKER'                 'INTEND'
RHS
    RHS1      constraint1_3840  1
    RHS1      constraint1_2830  1
    RHS1      constraint1_2080  1
    RHS1      constraint1_2082  1
    RHS1      constraint1_2081  1
    RHS1      constraint2_3840  1
    RHS1      constraint2_3841  1
    RHS1      constraint2_3842  1
    RHS1      constraint2_3843  1
    RHS1      constraint2_2830  1
    RHS1      constraint2_2831  1
    RHS1      constraint2_2832  1
    RHS1      constraint2_2833  1
    RHS1      constraint2_2080  1
    RHS1      constraint2_2081  1
    RHS1      constraint2_2082  1
    RHS1      constraint2_2083  1
BOUNDS
 UP BND1      Z_384_0_0  1
 UP BND1      Z_384_0_1  1
 UP BND1      Z_384_0_2  1
 UP BND1      Z_384_0_3  1
 UP BND1      Z_283_0_0  1
 UP BND1      Z_283_0_1  1
 UP BND1      Z_283_0_2  1
 UP BND1      Z_283_0_3  1
 UP BND1      Z_208_0_0  1
 UP BND1      Z_208_0_1  1
 UP BND1      Z_208_0_2  1
 UP BND1      Z_208_0_3  1
 UP BND1      Z_208_2_0  1
 UP BND1      Z_208_2_1  1
 UP BND1      Z_208_2_2  1
 UP BND1      Z_208_2_3  1
 UP BND1      Z_208_1_0  1
 UP BND1      Z_208_1_1  1
 UP BND1      Z_208_1_2  1
 UP BND1      Z_208_1_3  1
QUADOBJ
    Z_384_0_0  Z_208_0_0  -1.0813148788927334e-05
    Z_384_0_0  Z_208_1_0  -1.0813148788927334e-05
    Z_384_0_1  Z_208_0_1  -1.0813148788927334e-05
    Z_384_0_1  Z_208_1_1  -1.0813148788927334e-05
    Z_384_0_2  Z_208_0_2  -1.0813148788927334e-05
    Z_384_0_2  Z_208_1_2  -1.0813148788927334e-05
    Z_384_0_3  Z_208_0_3  -1.0813148788927334e-05
    Z_384_0_3  Z_208_1_3  -1.0813148788927334e-05
ENDATA
