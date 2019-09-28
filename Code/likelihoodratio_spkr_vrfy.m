function y = likelihoodratio_spkr_vrfy( class,nclasses,allomegas,allmeans,allcovs,input_mat )
%LIKELIHOODRATIO_SPKR_VRFY Summary of this function goes here
%   Detailed explanation goes here

T = size(input_mat,1) ; 
target_score = loglikelihood(allomegas(:,:,class),allmeans(:,:,:,class),allcovs(:,:,:,class),input_mat) ; 
target_score = target_score/T ; 
avg = 0.0 ;  
for cl = 1:nclasses
    if (~(cl==class))
        avg = avg+loglikelihood(allomegas(:,:,cl),allmeans(:,:,:,cl),allcovs(:,:,:,cl),input_mat) ; 
    end
end
avg = avg/(nclasses-1) ; 
imposter_score = avg/T ; 

y = target_score-imposter_score ; 
end

