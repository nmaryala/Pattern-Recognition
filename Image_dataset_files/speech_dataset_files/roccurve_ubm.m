function [frrvsfar,x] = roccurve_ubm(class,vaSet1,vaSet2,vaSet3,vaSet4,vaSet5,vaSet6,vaSet7,vaSet8,vaSet9,vaSet10,oT,mT,cT,oI,mI,cI )
%ROCCURVE Summary of this function goes here
%   Detailed explanation goes here

i = 1 ; 

frrvsfar = zeros(20,2) ; 
threshold = 0 ; 
y = zeros(10) ; 
x = 0 ; 
while threshold <= 20  
    disp(threshold) ; 
    
    y = universal_background_model(class,threshold,vaSet1,vaSet2,vaSet3,vaSet4,vaSet5,vaSet6,vaSet7,vaSet8,vaSet9,vaSet10,oT,mT,cT,oI,mI,cI); 
    disp(y) ; 
    sub1 = y(1,:) ; 
    sub2 = y(2:10,:) ;

    tp = sum(sub1) ; 
    fn = 10-tp ; 
    fp = sum(sum(sub2)) ; 
    tn = 90-fp ; 

    frr = fn/(tp+fn) ; 
    far = fp/(fp+tn) ;
    hr = tp/(tp+fn) ; 
    disp('hit rate'); 
    disp(hr) ; 
 
    frr = fn/(fn+tp) ; 
    far = fp/(fp+tn) ; 
    disp(frr) ; disp(far) ; 
    threshold = threshold+0.5 ; 
end

