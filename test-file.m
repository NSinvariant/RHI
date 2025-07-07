//test functionality

p := 8747;
M := Matrix(RationalField(),4,4, [  1594141,   1591954,         0, 6376563/2,
  1591954,   1591957,    8747/2,   3183908,
        0,    8747/2,      8747,         0,
6376563/2,   3183908,         0,   6376563]);

basis := BasisFromNorm(p,M);

//test correctness

T2 := Matrix([[(Norm(x+y)-Norm(x)-Norm(y))/2 : x in basis] : y in basis]); 
A, B := MinkowskiGramReduction(T2);
T,U := MinkowskiGramReduction(M);
T;
A;
