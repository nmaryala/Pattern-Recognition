function [ omega1,means1,covar1 ] = clusterparams(trSet1,K)
km = kmeans(trSet1,K) ; 
partition = zeros(1,39,K) ; 



for i = 1:size(km,1)
    sz = size(partition(:,:,km(i)),1) ;
    partition(sz+1,:,km(i)) = trSet1(i,:) ;
end

%disp(size(partition)) ; 
means1 = zeros(1,39,K) ; 
covar1 = zeros(39,39,K) ; 
omega1 = zeros(1,K) ; 
for clu = 1:K
    temp = partition(:,:,clu) ; 
    temp = temp(any(temp,2),:);
    means1(:,:,clu) = mean(temp) ; 
    covar1(:,:,clu) = cov(temp) ;
    omega1(clu) = size(temp,1)/size(trSet1,1) ; 
end
end