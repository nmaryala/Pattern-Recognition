function mymean = my_mean( trSet,ndim )
sz = size(trSet); 
mymean = zeros(1,ndim) ;
for dim = 1:ndim 
    sum = 0 ; 
    for row = 1:sz(1) 
        sum = sum+trSet(row,dim) ;
    end
    mymean(dim) = int32(sum)/(int32(sz(1))) ; 
end
end

