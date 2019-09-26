function confusionnew = confusion_matrix(class,confusionold, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet)

confusionnew  = confusionold ; 
lhood = zeros(1,10) ; 

lhood(1) = loglikelihood(o1,m1,c1,teSet) ; 
lhood(2) = loglikelihood(o2,m2,c2,teSet) ; 
lhood(3) = loglikelihood(o3,m3,c3,teSet) ; 
lhood(4) = loglikelihood(o4,m4,c4,teSet) ; 
lhood(5) = loglikelihood(o5,m5,c5,teSet) ; 
lhood(6) = loglikelihood(o6,m6,c6,teSet) ; 
lhood(7) = loglikelihood(o7,m7,c7,teSet) ; 
lhood(8) = loglikelihood(o8,m8,c8,teSet) ; 
lhood(9) = loglikelihood(o9,m9,c9,teSet) ; 
lhood(10) = loglikelihood(o10,m10,c10,teSet) ; 

if (max(lhood)==lhood(class))
    confusionnew(class,class) = confusionnew(class,class)+1 ; 
else
    for i = 1:10 
        if (max(lhood) == lhood(i))
            confusionnew(class,i) = confusionnew(class,i)+1  ; 
            break ; 
        end
    end
end
end
%{
for n = 1:N
    te = teSet(n,:) ; 
    lhood = zeros(1,10) ; 
    
    lhood(1) = fvlikelihood(o1,m1,c1,te) ;
    lhood(2) = fvlikelihood(o2,m2,c2,te) ;
    lhood(3) = fvlikelihood(o3,m3,c3,te) ;
    lhood(4) = fvlikelihood(o4,m4,c4,te) ;
    lhood(5) = fvlikelihood(o5,m5,c5,te) ;
    lhood(6) = fvlikelihood(o6,m6,c6,te) ;
    lhood(7) = fvlikelihood(o7,m7,c7,te) ;
    lhood(8) = fvlikelihood(o8,m8,c8,te) ;
    lhood(9) = fvlikelihood(o9,m9,c9,te) ;
    lhood(10) = fvlikelihood(o10,m10,c10,te) ;
    
    if (max(lhood)==lhood(class))
        confusionnew(class,class) = confusionnew(class,class)+1 ; 
    else
        for i = 1:10 
            if (max(lhood)==lhood(i))
                confusionnew(class,i) = confusionnew(class,i)+1 ; 
            end
        end
    end 
end
end
%}






