function normalized = normalize( input )
%NORMALIZE Summary of this function goes here
%   Detailed explanation goes here

sz = size(input) ; 
normalized = zeros(sz(1),sz(2));
for k = 1:sz(2) 
    normalized(:,k) = (input(:,k)-mean(input(:,k)))/std(input(:,k)) ;  
end 
%disp(normalized) ; 



end

