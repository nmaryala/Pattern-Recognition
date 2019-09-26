
load('~/ACADS/Sem7/PR/Assignment1/Dataset-2_real_world/a_Image Classification data/CompleteData.mat') ; 
data = CompleteData ; 

data1 = data(1,1) ; 
data2 = data(2,1) ; 
data8 = data(8,1) ; 
data15= data(15,1); 
data20= data(20,1); 

data1mat = cell2mat(data1) ; 
data2mat = cell2mat(data2) ; 
data8mat = cell2mat(data8) ; 
data15mat = cell2mat(data15) ; 
data20mat = cell2mat(data20) ; 


data1mat = normalize(data1mat) ; 
data2mat = normalize(data2mat) ; 
data8mat = normalize(data8mat) ;
data15mat = normalize(data15mat); 
data20mat = normalize(data20mat); 
 


[trSet1,vSet1,teSet1] = partition(data1mat) ; 
[trSet2,vSet2,teSet2] = partition(data2mat) ;
[trSet8,vSet8,teSet8] = partition(data8mat) ; 
[trSet15,vSet15,teSet15] = partition(data15mat) ;
[trSet20,vSet20,teSet20] = partition(data20mat) ;



mean1 = mean(trSet1); 
mean2 = mean(trSet2) ; 
mean8 = mean(trSet8) ; 
mean15 = mean(trSet15) ; 
mean20 = mean(trSet20) ; 

var1 = var(trSet1) ; 
var2 = var(trSet2) ; 
var8 = var(trSet8) ; 
var15 = var(trSet15); 
var20 = var(trSet20); 

cov1 = cov(trSet1) ; 
cov2 = cov(trSet2) ; 
cov8 = cov(trSet8) ; 
cov15 = cov(trSet15) ; 
cov20 = cov(trSet20) ; 

cov1 = posdef(cov1) ; 
cov2 = posdef(cov2) ; 
cov8 = posdef(cov8) ; 
cov15= posdef(cov15) ;
cov20= posdef(cov20) ; 

correctPred = 0 ;
totalPred = 0 ; 

sz1 = size(teSet1) ; 
sz2 = size(teSet2) ; 
sz8 = size(teSet8) ; 
sz15 = size(teSet15) ; 
sz20 = size(teSet20) ; 

confusion = zeros(20,20) ;


for k = 1:sz1 
   cl = bayes_classifier(teSet1(k,:),mean1,mean2,mean8,mean15,mean20,cov1,cov2,cov8,cov15,cov20) ;  
   confusion(1,cl) = confusion(1,cl)+1 ; 
end

for k = 1:sz2 
   cl = bayes_classifier(teSet2(k,:),mean1,mean2,mean8,mean15,mean20,cov1,cov2,cov8,cov15,cov20) ;  
   confusion(2,cl) = confusion(2,cl)+1 ;
end

for k = 1:sz8
   cl = bayes_classifier(teSet8(k,:),mean1,mean2,mean8,mean15,mean20,cov1,cov2,cov8,cov15,cov20) ;  
   confusion(8,cl) = confusion(8,cl)+1 ;
end

for k = 1:sz15
   cl = bayes_classifier(teSet15(k,:),mean1,mean2,mean8,mean15,mean20,cov1,cov2,cov8,cov15,cov20) ;  
   confusion(15,cl) = confusion(15,cl)+1 ;
end

for k = 1:sz20
   cl = bayes_classifier(teSet20(k,:),mean1,mean2,mean8,mean15,mean20,cov1,cov2,cov8,cov15,cov20) ;  
   confusion(20,cl) = confusion(20,cl)+1 ;
end

%{ 
for k = 1:sz1 
   cl = naive_bayes_classifier(teSet1(k,:),mean1,mean2,mean8,mean15,mean20,var1,var2,var8,var15,var20) ;  
   confusion(1,cl) = confusion(1,cl)+1 ; 
end

for k = 1:sz2 
   cl = naive_bayes_classifier(teSet2(k,:),mean1,mean2,mean8,mean15,mean20,var1,var2,var8,var15,var20) ;  
   confusion(2,cl) = confusion(2,cl)+1 ;  
end

for k = 1:sz8
   cl = naive_bayes_classifier(teSet8(k,:),mean1,mean2,mean8,mean15,mean20,var1,var2,var8,var15,var20) ;  
   confusion(8,cl) = confusion(8,cl)+1  ; 
end

for k = 1:sz15
   cl = naive_bayes_classifier(teSet15(k,:),mean1,mean2,mean8,mean15,mean20,var1,var2,var8,var15,var20) ;  
   confusion(15,cl) = confusion(15,cl)+1  ; 
end

for k = 1:sz20
    cl = naive_bayes_classifier(teSet20(k,:),mean1,mean2,mean8,mean15,mean20,var1,var2,var8,var15,var20) ;  
    confusion(20,cl) = confusion(20,cl)+1 ; 
end
%}
acc = 0.0 ; 
num = 0 ; 
for k = 1:20 
    num = num+confusion(k,k) ; 
end
den = sum(sum(confusion)) ;  
acc = num/den ;
disp(acc); 


