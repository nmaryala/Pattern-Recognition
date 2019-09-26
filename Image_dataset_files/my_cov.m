function covar = my_cov( trSet1,mean1,ndim )
%MY_COV Summary of this function goes here
%   Detailed explanation goes here
sz = size(trSet1) ; 
covar = zeros(ndim) ;
for k = 1:sz(1) 
    covar = covar+((transpose(trSet1(k)-mean1))*(trSet1(k)-mean1)) ; 
end
covar = (1/sz(1))*covar ; 

end

