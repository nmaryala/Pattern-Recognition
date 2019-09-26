function [o,m,c] = param_estimation(trSet,K) 
%PARAM_ESTIMATION Summary of this function goes here
%   Detailed explanation goes here
N = size(trSet,1) ; 
Q = K ; 
threshold = 0.00001 ;  % original used = 0.1 
[omegai,meansi,covari] = clusterparams(trSet,Q) ;
o = omegai ; 
m = meansi ; 
c = covari ; 
lhoodold = loglikelihood(o,m,c,trSet) ; 
iter = 0 ; 
while iter<=500 
    [o,m,c] = expectation_maximisation(o,m,c,trSet) ; 
    lhoodnew = loglikelihood(o,m,c,trSet) ;
    if (abs(lhoodnew-lhoodold) < threshold)
        break ; 
    end
    disp(iter) ; 
    disp('----------------------->') ; 
    disp(lhoodold) ; 
    disp(lhoodnew) ; 
    %disp(abs(lhoodnew-lhoodold)) ; 
    disp('<-----------------------') ; 
    lhoodold = lhoodnew ;
    iter = iter+1 ; 
end
disp('done') ; 


end

