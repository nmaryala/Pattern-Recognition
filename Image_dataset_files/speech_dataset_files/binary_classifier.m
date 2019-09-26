function y = binary_classifier(threshold,class,nclasses,allomegas,allmeans,allcovs,input_mat )
%BINARY_CLASSIFIER Summary of this function goes here
%   Detailed explanation goes here

T = size(input_mat,1) ; 
target_score = loglikelihood(allomegas(:,:,class),allmeans(:,:,:,class),allcovs(:,:,:,class),input_mat) ; 
target_score = target_score/T ; 

avg = 0 ; 
for cl = 1:nclasses
    if (~(cl==class))
        avg = avg+loglikelihood(allomegas(:,:,cl),allmeans(:,:,:,cl),allcovs(:,:,:,cl),input_mat) ; 
    end
end
avg = avg/(nclasses-1) ; 
imposter_score = avg/T ;

%disp('scores....') ; 
%disp(target_score) ; 
%disp(imposter_score) ; 
%{
maxi = -100000; 
for cl = 1:nclasses
    if (~(cl==class))
        maxi = max(maxi,loglikelihood(allomegas(:,:,cl),allmeans(:,:,:,cl),allcovs(:,:,:,cl),input_mat)) ; 
    end
end 
imposter_score = maxi/T ;
%}

if (target_score-imposter_score > threshold)
    y = 1 ; 
else
    y = 0 ; 
end

     

end

