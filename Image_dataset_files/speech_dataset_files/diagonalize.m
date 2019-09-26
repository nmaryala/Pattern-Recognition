function output = diagonalize( matrix )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
SZ = size(matrix) ; 
r = SZ(1) ; 
output = zeros(r,r) ; 
for i = 1:r
    output(i,i) = matrix(i,i) ; 
end

end

