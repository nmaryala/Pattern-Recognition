function [frrvsfar,x] = roccurve(class,nclasses,vaSet1,vaSet2,vaSet3,vaSet4,vaSet5,vaSet6,vaSet7,vaSet8,vaSet9,vaSet10,allomegas,allmeans,allcovs )
%ROCCURVE Summary of this function goes here
%   Detailed explanation goes here

i = 1 ; 

frrvsfar = zeros(61,3) ; 
threshold = -40 ; 
x = 0 ; 
while threshold <= 20  
    disp(threshold) ; 
    
    y = background_model(class,threshold,vaSet1,vaSet2,vaSet3,vaSet4,vaSet5,vaSet6,vaSet7,vaSet8,vaSet9,vaSet10,allomegas,allmeans,allcovs) ; 
    
   
    yc= ~y ; 
    ysum  = sum(y') ; 
    ycsum = sum(yc') ; 
    
    tp = ysum(class) ; 
    fp = sum(ysum)-tp ; 
    fn = ycsum(class) ; 
    tn = sum(ycsum)-fn ; 
    disp(tp) ; disp(fp) ; disp(tn) ; disp(fn) ; 
    frr = fn/(tp+fn) ; 
    far = fp/(fp+tn) ; 
    frrvsfar(i,1) = threshold ; 
    frrvsfar(i,2) = frr ;
    frrvsfar(i,3) = far ; 
    disp('----------------') ; 
    disp(frr) ; 
    disp(far) ; 
    disp('----------------') ; 
    if (frr == far)
        x = min(x,threshold) ;
    end
    
   
    threshold = threshold+0.5 ; 
    i = i+1 ; 
end

