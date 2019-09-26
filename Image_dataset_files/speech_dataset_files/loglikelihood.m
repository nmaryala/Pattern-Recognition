function lhood = loglikelihood(omega,means,covar,xx )
%LOGLIKELIHOOD Summary of this function goes here
%   Detailed explanation goes here
N = size(xx,1) ; 
Q = size(omega,2) ; 
lhood = 0.0 ; 
for n = 1:N 
    gmm = 0.0 ; 
    for q = 1:Q 
        %uncomment the below line while doing naive_bayes classification.
        %covar(:,:,q) = diagonalize(covar) ;
        gmm = gmm+(omega(q)*(gaussian1(xx(n,:),means(:,:,q),covar(:,:,q)))) ; 
    end
    lhood = lhood+log(gmm) ; 
end

end

