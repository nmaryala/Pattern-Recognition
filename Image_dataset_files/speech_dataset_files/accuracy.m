function [acc,confusion] = accuracy(O,M,C,te1,te2,te3,te4,te5,te6,te7,te8,te9,te10)
%ACCURACY Summary of this function goes here
%   Detailed explanation goes here

nclasses = size(O,3) ; 
confusion = zeros(nclasses,nclasses) ; 

correctPred = 0 ; 
pred = 0 ; 


lhood = zeros(1,10) ;

N1 = size(te1,1) ; 
Q1 = size(O(:,:,1),2) ; 
for n = 1:N1 
    te = te1(n,:) ; 
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
    if (max(lhood)== lhood(1))
        correctPred = correctPred+1 ;    
        pred = pred+1 ;
        confusion(1,1) = confusion(1,1)+1 ;
        
    else
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(1,i) = confusion(1,i)+1 ;
                break ; 
            end
        end
    end    
end

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
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(2,i) = confusion(2,i)+1 ;
                break ; 
            end
        end
    end    
end

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
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(3,i) = confusion(3,i)+1 ;
                break ; 
            end
        end
    end    
end

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
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(4,i) = confusion(4,i)+1 ;
                break ; 
            end
        end
    end    
end

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
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(5,i) = confusion(5,i)+1 ;
                break ; 
            end
        end
    end    
end

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
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(6,i) = confusion(6,i)+1 ;
                break ; 
            end
        end
    end    
end

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
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(7,i) = confusion(7,i)+1 ;
                break ; 
            end
        end
    end    
end

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
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(8,i) = confusion(8,i)+1 ;
                break ; 
            end
        end
    end    
end

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
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(9,i) = confusion(9,i)+1 ;
                break ; 
            end
        end
    end    
end

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
        for i = 1:nclasses
            if (max(lhood)==lhood(i))
                confusion(10,i) = confusion(10,i)+1 ;
                break ; 
            end
        end
    end    
end

acc = correctPred/pred ; 
disp(acc); 

    

end

