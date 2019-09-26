function classLabel = naive_bayes_classifier( x,mean1,mean2,mean8,mean15,mean20,var1,var2,var8,var15,var20 )
%NAIVE_BAYES_CLASSIFIER Summary of this function goes here
%   Detailed explanation goes here
%cov1 = diagonalize(cov1) ; 
%cov2 = diagonalize(cov2) ; 
%cov8 = diagonalize(cov8) ;
%cov15 = diagonalize(cov15) ; 
%cov20 = diagonalize(cov20) ; 


lhood1 = 1 ; 
for i = 1:48 
    lhood1 = lhood1*(double(naive_gaussian(x(i),mean1(i),var1(i)))) ;
end
lhood2 = 1 ; 
for i = 1:48 
    lhood2 = lhood2*(double(naive_gaussian(x(i),mean2(i),var2(i)))) ;
end
lhood8 = 1 ; 
for i = 1:48 
    lhood8 = lhood8*(double(naive_gaussian(x(i),mean8(i),var8(i)))) ;
end
lhood15 = 1 ; 
for i = 1:48 
    lhood15 = lhood15*(double(naive_gaussian(x(i),mean15(i),var15(i)))) ;
end
lhood20 = 1 ; 
for i = 1:48 
    lhood20 = lhood20*(double(naive_gaussian(x(i),mean20(i),var20(i)))) ;
end




%lhood1 = double(gaussian(x,mean1,cov1)) ; 
%lhood2 = double(gaussian(x,mean2,cov2)) ; 
%lhood8 = double(gaussian(x,mean8,cov8)) ; 
%lhood15 = double(gaussian(x,mean15,cov15)) ;
%lhood20 = double(gaussian(x,mean20,cov20)) ;

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

