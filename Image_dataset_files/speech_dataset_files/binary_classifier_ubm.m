function y = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,input_mat )
%B Summary of this function goes here
%   Detailed explanation goes here
T = size(input_mat,1) ; 
target_score = loglikelihood(oT,mT,cT,input_mat) ; 
target_score = target_score/T ; 

imposter_score = loglikelihood(oI,mI,cI,input_mat) ; 
imposter_score = imposter_score/T ; 

disp(target_score-imposter_score) ; 

if (target_score-imposter_score > threshold)
    y = 1 ; 
else
    y = 0 ; 
end

end

