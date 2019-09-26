function classLabel = bayes_classifier(x,mean1,mean2,mean8,mean15,mean20,cov1,cov2,cov8,cov15,cov20)
%BAYES_CLASSIFIER Summary of this function goes here
%   Detailed explanation goes here


lhood1 = double(gaussian(x,mean1,cov1)) ; 
lhood2 = double(gaussian(x,mean2,cov2)) ; 
lhood8 = double(gaussian(x,mean8,cov8)) ; 
lhood15 = double(gaussian(x,mean15,cov15)) ;
lhood20 = double(gaussian(x,mean20,cov20)) ;

classLabel = 1 ; 
ret = lhood1 ; 
if (ret < lhood2)
    ret = lhood2 ;
    classLabel = 2 ;
end
if (ret < lhood8)
    ret = lhood8 ; 
    classLabel = 8 ; 
end
if (ret < lhood15)
    ret = lhood15 ; 
    classLabel = 15 ; 
end
if (ret < lhood20)
    ret = lhood20 ; 
    classLabel= 20 ; 
end

end

