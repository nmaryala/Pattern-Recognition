function Anew = posdef( A0 )
%POSDEF Summary of this function goes here
%   Detailed explanation goes here
Anew = A0 ; 
sz = size(A0) ; 
ndim = sz(2) ; 
for k=1:ndim 
    Anew(k,k) = Anew(k,k)+0.000000001 ; 
end
end

