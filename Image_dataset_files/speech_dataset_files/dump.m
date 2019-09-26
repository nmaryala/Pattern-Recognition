O = zeros(1,K,10) ; 
M = zeros(1,ndim,K,10) ; 
C = zeros(ndim,ndim,K,10) ; 

O(:,:,1) = o1 ; 
M(:,:,:,1) = m1 ; 
C(:,:,:,1) = c1 ; 
O(:,:,2) = o2 ; 
M(:,:,:,2) = m2 ; 
C(:,:,:,2) = c2 ; 
O(:,:,3) = o3 ; 
M(:,:,:,3) = m3 ; 
C(:,:,:,3) = c3 ;
O(:,:,4) = o4 ; 
M(:,:,:,4) = m4 ; 
C(:,:,:,4) = c4 ;
O(:,:,5) = o5 ; 
M(:,:,:,5) = m5 ; 
C(:,:,:,5) = c5 ; 
O(:,:,6) = o6 ; 
M(:,:,:,6) = m6 ; 
C(:,:,:,6) = c6 ; 
O(:,:,7) = o7 ; 
M(:,:,:,7) = m7 ; 
C(:,:,:,7) = c7 ;
O(:,:,8) = o8 ; 
M(:,:,:,8) = m8 ; 
C(:,:,:,8) = c8 ;
O(:,:,9) = o9 ; 
M(:,:,:,9) = m9 ; 
C(:,:,:,9) = c9 ; 
O(:,:,10) = o10 ; 
M(:,:,:,10) = m10 ; 
C(:,:,:,10) = c10 ; 





%[acc,confusion] = accuracy(O,M,C,teSet1,teSet2,teSet3,teSet4,teSet5,teSet6,teSet7,teSet8,teSet9,teSet10) ; 
te1 = teSet1 ; 
te2 = teSet2 ; 
te3 = teSet3 ; 
te4 = teSet4 ; 
te5 = teSet5 ; 
te6 = teSet6 ; 
te7 = teSet7 ; 
te8 = teSet8 ; 
te9 = teSet9 ; 
te10= teSet10 ; 

nclasses = size(O,3) ; 
confusion = zeros(nclasses,nclasses) ; 

correctPred = 0 ; 
pred = 0 ; 


lhood = zeros(1,10) ;

N1 = size(te1,1) ; 
Q1 = size(O(:,:,1),2) ; 
for n = 1:N1 
    
    
    lhood(1) = fvlikelihood(O(:,:,1),M(:,:,:,1),C(:,:,:,1),teSet1(n,:)) ;
    lhood(2) = fvlikelihood(O(:,:,2),M(:,:,:,2),C(:,:,:,2),teSet1(n,:)) ;
    lhood(3) = fvlikelihood(O(:,:,3),M(:,:,:,3),C(:,:,:,3),teSet1(n,:)) ;
    lhood(4) = fvlikelihood(O(:,:,4),M(:,:,:,4),C(:,:,:,4),teSet1(n,:)) ;
    lhood(5) = fvlikelihood(O(:,:,5),M(:,:,:,5),C(:,:,:,5),teSet1(n,:)) ;
    lhood(6) = fvlikelihood(O(:,:,6),M(:,:,:,6),C(:,:,:,6),teSet1(n,:)) ;
    lhood(7) = fvlikelihood(O(:,:,7),M(:,:,:,7),C(:,:,:,7),teSet1(n,:)) ;
    lhood(8) = fvlikelihood(O(:,:,8),M(:,:,:,8),C(:,:,:,8),teSet1(n,:)) ;
    lhood(9) = fvlikelihood(O(:,:,9),M(:,:,:,9),C(:,:,:,9),teSet1(n,:)) ;
    lhood(10) = fvlikelihood(O(:,:,10),M(:,:,:,10),C(:,:,:,10),teSet1(n,:)) ;
    %disp(lhood) ; 
    if (max(lhood)== lhood(1))
        correctPred = correctPred+1 ;    
        pred = pred+1 ;
        confusion(1,1) = confusion(1,1)+1 ;
        
    else
        pred = pred+1 ;
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(1,i) = confusion(1,i)+1 ;
                break ; 
            end
        end
    end    
end
lhood1 = lhood ;  
lhood = zeros(1,10) ;

N2 = size(te2,1) ; 
Q2 = size(O(:,:,2),2) ; 
for n = 1:N2
    te = te2(n,:) ; 
    lhood(1) = fvlikelihood(O(:,:,1),M(:,:,:,1),C(:,:,:,1),te) ;
    lhood(2) = fvlikelihood(O(:,:,2),M(:,:,:,2),C(:,:,:,2),te) ;
    lhood(3) = fvlikelihood(O(:,:,3),M(:,:,:,3),C(:,:,:,3),te) ;
    lhood(4) = fvlikelihood(O(:,:,4),M(:,:,:,4),C(:,:,:,4),te) ;
    lhood(5) = fvlikelihood(O(:,:,5),M(:,:,:,5),C(:,:,:,5),te) ;
    lhood(6) = fvlikelihood(O(:,:,6),M(:,:,:,6),C(:,:,:,6),te) ;
    lhood(7) = fvlikelihood(O(:,:,7),M(:,:,:,7),C(:,:,:,7),te) ;
    lhood(8) = fvlikelihood(O(:,:,8),M(:,:,:,8),C(:,:,:,8),te) ;
    lhood(9) = fvlikelihood(O(:,:,9),M(:,:,:,9),C(:,:,:,9),te) ;
    lhood(10) = fvlikelihood(O(:,:,10),M(:,:,:,10),C(:,:,:,10),te) ;
    if (max(lhood)== lhood(2))
        correctPred = correctPred+1 ;    
        pred = pred+1 ;
        confusion(2,2) = confusion(2,2)+1 ;
        
    else
        pred = pred+1 ; 
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(2,i) = confusion(2,i)+1 ;
                break ; 
            end
        end
    end    
end
lhood2 = lhood ;
lhood = zeros(1,10) ; 
N3 = size(te3,1) ; 
Q3 = size(O(:,:,3),2) ; 
for n = 1:N3 
    te = te3(n,:) ; 
    lhood(1) = fvlikelihood(O(:,:,1),M(:,:,:,1),C(:,:,:,1),te) ;
    lhood(2) = fvlikelihood(O(:,:,2),M(:,:,:,2),C(:,:,:,2),te) ;
    lhood(3) = fvlikelihood(O(:,:,3),M(:,:,:,3),C(:,:,:,3),te) ;
    lhood(4) = fvlikelihood(O(:,:,4),M(:,:,:,4),C(:,:,:,4),te) ;
    lhood(5) = fvlikelihood(O(:,:,5),M(:,:,:,5),C(:,:,:,5),te) ;
    lhood(6) = fvlikelihood(O(:,:,6),M(:,:,:,6),C(:,:,:,6),te) ;
    lhood(7) = fvlikelihood(O(:,:,7),M(:,:,:,7),C(:,:,:,7),te) ;
    lhood(8) = fvlikelihood(O(:,:,8),M(:,:,:,8),C(:,:,:,8),te) ;
    lhood(9) = fvlikelihood(O(:,:,9),M(:,:,:,9),C(:,:,:,9),te) ;
    lhood(10) = fvlikelihood(O(:,:,10),M(:,:,:,10),C(:,:,:,10),te) ;
    if (max(lhood)== lhood(3))
        correctPred = correctPred+1 ;    
        pred = pred+1 ;
        confusion(3,3) = confusion(3,3)+1 ;
        
    else
        pred = pred+1 ; 
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(3,i) = confusion(3,i)+1 ;
                break ; 
            end
        end
    end    
end
lhood3 = lhood ;
lhood = zeros(1,10) ;
 
N4 = size(te4,1) ; 
Q4 = size(O(:,:,4),2) ; 
for n = 1:N4 
    te = te4(n,:) ; 
    lhood(1) = fvlikelihood(O(:,:,1),M(:,:,:,1),C(:,:,:,1),te) ;
    lhood(2) = fvlikelihood(O(:,:,2),M(:,:,:,2),C(:,:,:,2),te) ;
    lhood(3) = fvlikelihood(O(:,:,3),M(:,:,:,3),C(:,:,:,3),te) ;
    lhood(4) = fvlikelihood(O(:,:,4),M(:,:,:,4),C(:,:,:,4),te) ;
    lhood(5) = fvlikelihood(O(:,:,5),M(:,:,:,5),C(:,:,:,5),te) ;
    lhood(6) = fvlikelihood(O(:,:,6),M(:,:,:,6),C(:,:,:,6),te) ;
    lhood(7) = fvlikelihood(O(:,:,7),M(:,:,:,7),C(:,:,:,7),te) ;
    lhood(8) = fvlikelihood(O(:,:,8),M(:,:,:,8),C(:,:,:,8),te) ;
    lhood(9) = fvlikelihood(O(:,:,9),M(:,:,:,9),C(:,:,:,9),te) ;
    lhood(10) = fvlikelihood(O(:,:,10),M(:,:,:,10),C(:,:,:,10),te) ;
    if (max(lhood)== lhood(4))
        correctPred = correctPred+1 ;    
        pred = pred+1 ;
        confusion(4,4) = confusion(4,4)+1 ;
        
    else
        pred = pred+1 ; 
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(4,i) = confusion(4,i)+1 ;
                break ; 
            end
        end
    end    
end
lhood4 = lhood ;
lhood = zeros(1,10) ;
N5 = size(te5,1) ; 
Q5 = size(O(:,:,5),2) ; 
for n = 1:N5 
    te = te5(n,:) ; 
    lhood(1) = fvlikelihood(O(:,:,1),M(:,:,:,1),C(:,:,:,1),te) ;
    lhood(2) = fvlikelihood(O(:,:,2),M(:,:,:,2),C(:,:,:,2),te) ;
    lhood(3) = fvlikelihood(O(:,:,3),M(:,:,:,3),C(:,:,:,3),te) ;
    lhood(4) = fvlikelihood(O(:,:,4),M(:,:,:,4),C(:,:,:,4),te) ;
    lhood(5) = fvlikelihood(O(:,:,5),M(:,:,:,5),C(:,:,:,5),te) ;
    lhood(6) = fvlikelihood(O(:,:,6),M(:,:,:,6),C(:,:,:,6),te) ;
    lhood(7) = fvlikelihood(O(:,:,7),M(:,:,:,7),C(:,:,:,7),te) ;
    lhood(8) = fvlikelihood(O(:,:,8),M(:,:,:,8),C(:,:,:,8),te) ;
    lhood(9) = fvlikelihood(O(:,:,9),M(:,:,:,9),C(:,:,:,9),te) ;
    lhood(10) = fvlikelihood(O(:,:,10),M(:,:,:,10),C(:,:,:,10),te) ;
    if (max(lhood)== lhood(5))
        correctPred = correctPred+1 ;    
        pred = pred+1 ;
        confusion(5,5) = confusion(5,5)+1 ;
        
    else
        pred = pred+1; 
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(5,i) = confusion(5,i)+1 ;
                break ; 
            end
        end
    end    
end
lhood5 = lhood ;
lhood = zeros(1,10) ;
 
N6 = size(te6,1) ; 
Q6 = size(O(:,:,6),2) ; 
for n = 1:N6 
    te = te6(n,:) ; 
    lhood(1) = fvlikelihood(O(:,:,1),M(:,:,:,1),C(:,:,:,1),te) ;
    lhood(2) = fvlikelihood(O(:,:,2),M(:,:,:,2),C(:,:,:,2),te) ;
    lhood(3) = fvlikelihood(O(:,:,3),M(:,:,:,3),C(:,:,:,3),te) ;
    lhood(4) = fvlikelihood(O(:,:,4),M(:,:,:,4),C(:,:,:,4),te) ;
    lhood(5) = fvlikelihood(O(:,:,5),M(:,:,:,5),C(:,:,:,5),te) ;
    lhood(6) = fvlikelihood(O(:,:,6),M(:,:,:,6),C(:,:,:,6),te) ;
    lhood(7) = fvlikelihood(O(:,:,7),M(:,:,:,7),C(:,:,:,7),te) ;
    lhood(8) = fvlikelihood(O(:,:,8),M(:,:,:,8),C(:,:,:,8),te) ;
    lhood(9) = fvlikelihood(O(:,:,9),M(:,:,:,9),C(:,:,:,9),te) ;
    lhood(10) = fvlikelihood(O(:,:,10),M(:,:,:,10),C(:,:,:,10),te) ;
    if (max(lhood)== lhood(6))
        correctPred = correctPred+1 ;    
        pred = pred+1 ;
        confusion(6,6) = confusion(6,6)+1 ;
        
    else
        pred = pred+1 ; 
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(6,i) = confusion(6,i)+1 ;
                break ; 
            end
        end
    end    
end
lhood6 = lhood ;
lhood = zeros(1,10) ; 
N7 = size(te7,1) ; 
Q7 = size(O(:,:,7),2) ; 
for n = 1:N7 
    te = te7(n,:)  ; 
    lhood(1) = fvlikelihood(O(:,:,1),M(:,:,:,1),C(:,:,:,1),te) ;
    lhood(2) = fvlikelihood(O(:,:,2),M(:,:,:,2),C(:,:,:,2),te) ;
    lhood(3) = fvlikelihood(O(:,:,3),M(:,:,:,3),C(:,:,:,3),te) ;
    lhood(4) = fvlikelihood(O(:,:,4),M(:,:,:,4),C(:,:,:,4),te) ;
    lhood(5) = fvlikelihood(O(:,:,5),M(:,:,:,5),C(:,:,:,5),te) ;
    lhood(6) = fvlikelihood(O(:,:,6),M(:,:,:,6),C(:,:,:,6),te) ;
    lhood(7) = fvlikelihood(O(:,:,7),M(:,:,:,7),C(:,:,:,7),te) ;
    lhood(8) = fvlikelihood(O(:,:,8),M(:,:,:,8),C(:,:,:,8),te) ;
    lhood(9) = fvlikelihood(O(:,:,9),M(:,:,:,9),C(:,:,:,9),te) ;
    lhood(10) = fvlikelihood(O(:,:,10),M(:,:,:,10),C(:,:,:,10),te) ;
    if (max(lhood)== lhood(7))
        correctPred = correctPred+1 ;    
        pred = pred+1 ;
        confusion(7,7) = confusion(7,7)+1 ;
        
    else
        pred = pred+1 ; 
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(7,i) = confusion(7,i)+1 ;
                break ; 
            end
        end
    end    
end
lhood7 = lhood ;
lhood = zeros(1,10) ;
N8 = size(te8,1) ; 
Q8 = size(O(:,:,8),2) ; 
for n = 1:N8 
    te =te8(n,:) ; 
    lhood(1) = fvlikelihood(O(:,:,1),M(:,:,:,1),C(:,:,:,1),te) ;
    lhood(2) = fvlikelihood(O(:,:,2),M(:,:,:,2),C(:,:,:,2),te) ;
    lhood(3) = fvlikelihood(O(:,:,3),M(:,:,:,3),C(:,:,:,3),te) ;
    lhood(4) = fvlikelihood(O(:,:,4),M(:,:,:,4),C(:,:,:,4),te) ;
    lhood(5) = fvlikelihood(O(:,:,5),M(:,:,:,5),C(:,:,:,5),te) ;
    lhood(6) = fvlikelihood(O(:,:,6),M(:,:,:,6),C(:,:,:,6),te) ;
    lhood(7) = fvlikelihood(O(:,:,7),M(:,:,:,7),C(:,:,:,7),te) ;
    lhood(8) = fvlikelihood(O(:,:,8),M(:,:,:,8),C(:,:,:,8),te) ;
    lhood(9) = fvlikelihood(O(:,:,9),M(:,:,:,9),C(:,:,:,9),te) ;
    lhood(10) = fvlikelihood(O(:,:,10),M(:,:,:,10),C(:,:,:,10),te) ;
    if (max(lhood)== lhood(8))
        correctPred = correctPred+1 ;    
        pred = pred+1 ;
        confusion(8,8) = confusion(8,8)+1 ;
        
    else
        pred = pred+1 ; 
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(8,i) = confusion(8,i)+1 ;
                break ; 
            end
        end
    end    
end
lhood8 = lhood ;
lhood = zeros(1,10) ; 
N9 = size(te9,1) ; 
Q9 = size(O(:,:,9),2) ; 
for n = 1:N9 
    te = te9(n,:) ; 
    lhood(1) = fvlikelihood(O(:,:,1),M(:,:,:,1),C(:,:,:,1),te) ;
    lhood(2) = fvlikelihood(O(:,:,2),M(:,:,:,2),C(:,:,:,2),te) ;
    lhood(3) = fvlikelihood(O(:,:,3),M(:,:,:,3),C(:,:,:,3),te) ;
    lhood(4) = fvlikelihood(O(:,:,4),M(:,:,:,4),C(:,:,:,4),te) ;
    lhood(5) = fvlikelihood(O(:,:,5),M(:,:,:,5),C(:,:,:,5),te) ;
    lhood(6) = fvlikelihood(O(:,:,6),M(:,:,:,6),C(:,:,:,6),te) ;
    lhood(7) = fvlikelihood(O(:,:,7),M(:,:,:,7),C(:,:,:,7),te) ;
    lhood(8) = fvlikelihood(O(:,:,8),M(:,:,:,8),C(:,:,:,8),te) ;
    lhood(9) = fvlikelihood(O(:,:,9),M(:,:,:,9),C(:,:,:,9),te) ;
    lhood(10) = fvlikelihood(O(:,:,10),M(:,:,:,10),C(:,:,:,10),te) ;
    if (max(lhood)== lhood(9))
        correctPred = correctPred+1 ;    
        pred = pred+1 ;
        confusion(9,9) = confusion(9,9)+1 ;
        
    else
        pred = pred+1 ; 
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(9,i) = confusion(9,i)+1 ;
                break ; 
            end
        end
    end    
end
lhood9 = lhood ; 
lhood = zeros(1,10) ;
N10 = size(te10,1) ; 
Q10 = size(O(:,:,10),2) ; 
for n = 1:N10 
    te = te10(n,:) ;  
    lhood(1) = fvlikelihood(O(:,:,1),M(:,:,:,1),C(:,:,:,1),te) ;
    lhood(2) = fvlikelihood(O(:,:,2),M(:,:,:,2),C(:,:,:,2),te) ;
    lhood(3) = fvlikelihood(O(:,:,3),M(:,:,:,3),C(:,:,:,3),te) ;
    lhood(4) = fvlikelihood(O(:,:,4),M(:,:,:,4),C(:,:,:,4),te) ;
    lhood(5) = fvlikelihood(O(:,:,5),M(:,:,:,5),C(:,:,:,5),te) ;
    lhood(6) = fvlikelihood(O(:,:,6),M(:,:,:,6),C(:,:,:,6),te) ;
    lhood(7) = fvlikelihood(O(:,:,7),M(:,:,:,7),C(:,:,:,7),te) ;
    lhood(8) = fvlikelihood(O(:,:,8),M(:,:,:,8),C(:,:,:,8),te) ;
    lhood(9) = fvlikelihood(O(:,:,9),M(:,:,:,9),C(:,:,:,9),te) ;
    lhood(10) = fvlikelihood(O(:,:,10),M(:,:,:,10),C(:,:,:,10),te) ;
    if (max(lhood)== lhood(10))
        correctPred = correctPred+1 ; 
        pred = pred+1 ;
        confusion(10,10) = confusion(10,10)+1 ;
        
    else
        pred = pred + 1 ; 
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(10,i) = confusion(10,i)+1 ;
                break ; 
            end
        end
    end    
end
lhood10 = lhood ;
disp(correctPred) ; 
disp(pred) ; 
acc = correctPred/pred ; 
disp(acc); 



% from speaker_verification



%{
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet1(1:58,:)) ;tp =tp+(acc) ;fn=fn+(~acc) ;  
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet1(59:127,:)) ; tp =tp+(acc) ;fn=fn+(~acc) ;
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet1(128:196,:)) ; tp =tp+(acc) ;fn=fn+(~acc) ;
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet1(197:265,:)) ; tp =tp+(acc) ;fn=fn+(~acc) ;
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet1(266:325,:)) ; tp =tp+(acc) ;fn=fn+(~acc) ;
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet1(326:381,:)) ; tp =tp+(acc) ;fn=fn+(~acc) ;
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet1(382:448,:)) ; tp =tp+(acc) ;fn=fn+(~acc) ;
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet1(449:515,:)) ; tp =tp+(acc) ;fn=fn+(~acc) ;
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet1(516:582,:)) ; tp =tp+(acc) ;fn=fn+(~acc) ;
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet1(583:640,:)) ; tp =tp+(acc) ;fn=fn+(~acc) ;
                                                                     %[[65, 141, 217, 293, 363, 432, 512, 592, 672, 744]
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet2(1:65,:)) ; fp=fp+acc;tn=tn+(~acc); 
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet2(66:141,:)) ;fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet2(142:217,:)) ;fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet2(218:293,:)) ;fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet2(294:363,:)) ;fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet2(364:432,:)) ;fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet2(433:512,:)) ;fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet2(513:592,:)) ;fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet2(593:672,:)) ;fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet2(673:744,:)) ;fp=fp+acc;tn=tn+(~acc);


%[81, 173, 265, 357, 440, 496, 563, 630, 697, 755]
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet3(1:81,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet3(82:173,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet3(174:265,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet3(266:357,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet3(358:440,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet3(441:496,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet3(497:563,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet3(564:630,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet3(631:697,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet3(698:755,:));fp=fp+acc;tn=tn+(~acc);


acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet4(1:68,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet4(69:147,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet4(148:226,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet4(227:305,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet4(306:378,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet4(379:454,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet4(455:541,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet4(542:628,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet4(629:715,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet4(716:795,:));fp=fp+acc;tn=tn+(~acc);


acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet5(1:84,:)); fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet5(85:179,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet5(180:274,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet5(275:369,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet5(370:457,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet5(458:516,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet5(517:586,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet5(587:656,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet5(657:726,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet5(727:789,:));fp=fp+acc;tn=tn+(~acc);

acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet6(1:69,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet6(70:149,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet6(150:229,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet6(230:309,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet6(310:383,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet6(384:448,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet6(449:524,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet6(525:600,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet6(601:676,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet6(677:744,:));fp=fp+acc;tn=tn+(~acc);



acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet7(1:63,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet7(64:137,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet7(138:211,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet7(212:285,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet7(286:351,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet7(352:402,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet7(403:464,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet7(465:526,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet7(527:588,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet7(589:643,:));fp=fp+acc;tn=tn+(~acc);


acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet8(1:54,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet8(55:119,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet8(120:184,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet8(185:249,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet8(250:305,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet8(306:383,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet8(384:472,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet8(473:561,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet8(562:650,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet8(651:729,:));fp=fp+acc;tn=tn+(~acc);



acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet9(1:65,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet9(66:141,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet9(142:217,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet9(218:293,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet9(294:362,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet9(363:399,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet9(400:447,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet9(448:495,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet9(496:543,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet9(544:581,:));fp=fp+acc;tn=tn+(~acc);



acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet10(1:66,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet10(67:143,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet10(144:220,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet10(221:297,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet10(298:365,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet10(366:441,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet10(442:528,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet10(529:615,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet10(616:702,:));fp=fp+acc;tn=tn+(~acc);
acc = binary_classifier(thre,1,nclasses,allomegas,allmeans,allcovs,teSet10(703:782,:));fp=fp+acc;tn=tn+(~acc);
%}