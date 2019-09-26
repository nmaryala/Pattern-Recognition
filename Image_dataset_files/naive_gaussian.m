function y = naive_gaussian(x,means,var)
%NAIVE_GAUSSIAN Summary of this function goes here
%   Detailed explanation goes here
y = (1/(sqrt(var)))*(exp(((-0.5)*(x-means)*(x-means))/var)) ; 

end

