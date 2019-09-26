function [training,validation,test ] = partition( matrix )
%PARTITION Summary of this function goes here
%   Detailed explanation goes here
SIZE = size(matrix) ; 
nexamples = SIZE(1) ;  
ndimensions = SIZE(2) ; 
perm = randperm(nexamples,nexamples) ;
%disp(perm(:)) ; 
nvalid = int32((nexamples*15)/100) ; 

ntrain = int32((nexamples*70)/100) ; 
ntest = nvalid ; 

training = zeros(ntrain,ndimensions) ; 
validation= zeros(nvalid,ndimensions) ; 
test = zeros(ntest,ndimensions) ; 

for k = 1:ntrain 
    training(k,:) = matrix(perm(k),:) ; 
end 
for k = ntrain+1:ntrain+nvalid+1
    validation(k-ntrain,:) = matrix(perm(k),:) ; 
end
for k = ntrain+nvalid+2:nexamples
    test(k-ntrain-nvalid-1,:) = matrix(perm(k),:) ;
end 

end

