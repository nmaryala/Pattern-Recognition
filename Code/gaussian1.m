function y = gaussian1(x,mean,covar)
%GAUSSIAN Summary of this function goes here
%   Detailed explanation goes here

ndims = size(mean,2) ; 
y= power(2*pi,-ndims/2)*power(det(covar),-0.5)*exp((-0.5)*(((x-mean)*(inv(covar))*((x-mean)')))) ;
 
end

