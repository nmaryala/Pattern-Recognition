function [ omeganew,meansnew,covarnew ] = expectation_maximisation( omegaold,meansold,covarold,trSet)
%EXPECTATION_MAXIMISATION Summary of this function goes here
%   Detailed explanation goes here

N = size(trSet,1) ; 
Q = size(omegaold,2) ; 
ndim = size(trSet,2);

meansnew = zeros(1,ndim,Q) ; 
covarnew = zeros(ndim,ndim,Q) ; 
omeganew = zeros(1,Q) ; 
gamma = zeros(N,Q) ;
 

%expectation step 
for n = 1:N 
    den = 0.0 ; 
    for clu = 1:Q 
        clumean = meansold(:,:,clu) ; 
        clucov  = covarold(:,:,clu) ;
        cluomega = omegaold(clu) ;
        den = den+(cluomega*(gaussian1(trSet(n,:),clumean,clucov))) ; 
    end
    for q = 1:Q
        clumean = meansold(:,:,q) ; 
        clucov  = covarold(:,:,q) ;
        cluomega = omegaold(q) ;
        num = (cluomega*(gaussian1(trSet(n,:),clumean,clucov)));
        gamma(n,q) = num/den ; 
    end
end

%maximisation step. 
Nq = zeros(1,Q) ;
for q = 1:Q
    Nq(q) = sum(gamma(:,q)) ; 
end

%means calculation

for q = 1:Q 
    den = Nq(q) ; 
    num = zeros(1,ndim) ; 
    for n = 1:N
        num = num + gamma(n,q)*trSet(n,:) ; 
    end
    meansnew(:,:,q) = num/den ; 
end

%cov calculation
for q = 1:Q 
    den = Nq(q) ; 
    num = zeros(ndim,ndim) ; 
    for n = 1:N
        clumean = meansold(:,:,q) ; 
        num = num + gamma(n,q)*(((trSet(n,:)-clumean)')*((trSet(n,:)-clumean))) ; 
    end
    covarnew(:,:,q) = num/den ; 
end

%omega calculation
for q = 1:Q
    omeganew(q) = Nq(q)/N ; 
end



end

