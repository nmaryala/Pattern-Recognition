function Anew = diagonalize( Aold)
%DIAGONALIZE Summary of this function goes here
%   Detailed explanation goes here
sz = size(Aold) ; 
Anew = zeros(sz(1),sz(2)) ; 
ndim = sz(2) ; 
for k = 1:ndim
    Anew(k,k) = Aold(k,k) ; 
end


end

