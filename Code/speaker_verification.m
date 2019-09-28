%load('b_Speaker Identification and Verification dataset/speech_normalized_K6_1.mat') ; 

allomegas(:,:,1) = o1 ; 
allomegas(:,:,2) = o2 ; 
allomegas(:,:,3) = o3 ; 
allomegas(:,:,4) = o4 ; 
allomegas(:,:,5) = o5 ; 
allomegas(:,:,6) = o6 ; 
allomegas(:,:,7) = o7 ; 
allomegas(:,:,8) = o8 ; 
allomegas(:,:,9) = o9 ; 
allomegas(:,:,10) = o10 ; 

allmeans(:,:,:,1) = m1 ; 
allmeans(:,:,:,2) = m2 ;
allmeans(:,:,:,3) = m3 ;
allmeans(:,:,:,4) = m4 ;
allmeans(:,:,:,5) = m5 ;
allmeans(:,:,:,6) = m6 ;
allmeans(:,:,:,7) = m7 ;
allmeans(:,:,:,8) = m8 ;
allmeans(:,:,:,9) = m9 ;
allmeans(:,:,:,10) = m10 ;

allcovs(:,:,:,1) = c1 ; 
allcovs(:,:,:,2) = c2 ; 
allcovs(:,:,:,3) = c3 ; 
allcovs(:,:,:,4) = c4 ; 
allcovs(:,:,:,5) = c5 ; 
allcovs(:,:,:,6) = c6 ; 
allcovs(:,:,:,7) = c7 ; 
allcovs(:,:,:,8) = c8 ; 
allcovs(:,:,:,9) = c9 ; 
allcovs(:,:,:,10) = c10 ; 

nclasses = 10 ; 
%For Speaker Verification 
verification_acc = zeros(1,10) ; 

acc = 0; 

%[frrvsfar,thre] = roccurve(1,10,vaSet1,vaSet2,vaSet3,vaSet4,vaSet5,vaSet6,vaSet7,vaSet8,vaSet9,vaSet10,allomegas,allmeans,allcovs) ; 


y = background_modeltest(1,-9,teSet1,teSet2,teSet3,teSet4,teSet5,teSet6,teSet7,teSet8,teSet9,teSet10,allomegas,allmeans,allcovs) ; 
%{
yc= ~y ; 

ysum = sum(y') ; 
ycsum = sum(yc') ; 

tp = ysum(1) ; 
fp = sum(ysum)-tp ; 
fn = ycsum(1) ; 
tn = sum(ycsum)-fn ; 
frr = fn/(tp+fn) ; 
far = fp/(fp+tn) ; 
hr = tp/(tp+fn) ; 
disp('hit rate'); 
disp(hr) ; 
disp('--------> FINAL ANSWER <----------------') ; 
frr = fn/(fn+tp) ; 
far = fp/(fp+tn) ; 
disp(frr) ; disp(far) ;
%}

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
disp('--------> FINAL ANSWER <----------------') ; 
frr = fn/(fn+tp) ; 
far = fp/(fp+tn) ; 
disp(frr) ; disp(far) ; 

