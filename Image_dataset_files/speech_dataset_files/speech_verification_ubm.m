load('b_Speaker Identification and Verification dataset/speech_normalized_K6_1.mat') ; 

class = 1 ; 
Q = 6 ; 
trSetT= trSet1 ; 
trSetI= trSet1 ; 
trSetI = [trSetI;trSet2] ; 
trSetI = [trSetI;trSet3] ;
trSetI = [trSetI;trSet4] ;
trSetI = [trSetI;trSet5] ;
trSetI = [trSetI;trSet6] ;
trSetI = [trSetI;trSet7] ;
trSetI = [trSetI;trSet8] ;
trSetI = [trSetI;trSet9] ;
trSetI = [trSetI;trSet10] ;

%[oT,mT,cT] = param_estimation(trSetT,Q) ; 
%[oI,mI,cI] = param_estimation(trSetI,Q) ; 

[frrvsfar,thre] = roccurve_ubm(class,vaSet1,vaSet2,vaSet3,vaSet4,vaSet5,vaSet6,vaSet7,vaSet8,vaSet9,vaSet10,oT,mT,cT,oI,mI,cI) ; 

disp(frrvsfar) ; 

plot(frrvsfar) ; 









