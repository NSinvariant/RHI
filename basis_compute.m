//Input: p = disc(Bp,infty) and M = Gram matrix of norm form

BasisFromNorm := function(p,M)
    T,U := MinkowskiGramReduction(M);
    Tinv:= T^-1;
    Q := 4*p*Submatrix(Tinv,[2..4],[2..4])/2;
    O := QuaternionOrder(Q);
    return Basis(O);
end function;
