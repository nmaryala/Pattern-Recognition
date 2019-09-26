function gauss = gaussian1(x,classmean,classcov)
%GAUSSIAN Summary of this function goes here
%   Detailed explanation goes here

sz = size(x) ; 
ndim = sz(2) ; 
disp('In gaussian') ; 
gauss = (-ndim/2)*log(det(classcov))+((-0.5)*((x-classmean)*((inv(classcov)))*(transpose(x-classmean)))) ; 

if (det(classcov)<0)
    gauss = 0.0 ; 
end

end

