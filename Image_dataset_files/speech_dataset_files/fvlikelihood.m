function lhood = fvlikelihood( omega,means,covar,x)
%FVLIKELIHOOD Summary of this function goes here
%   Detailed explanation goes here

Q = size(omega,2) ;

gmm = 0.0 ; 
lhood = 0.0 ;
for q = 1:Q 
    gmm = gmm+(omega(q)*(gaussian(x,means(:,:,q),covar(:,:,q)))) ; 
end
lhood = lhood+log(gmm) ; 

end

