function Q = model_validation(t1,t2,t3,t4,t5,t6,t7,t8,t9,t0,v)
)
%MODEL_VALIDATION Summary of this function goes here
%   Detailed explanation goes here
Q = 0 ; 
    
for K = 2:16
    accuracy = 0.0 ; 
    [o1,m1,c1] = param_estimation(t1,K) ; 
    [o2,m2,c2] = param_estimation(t2,K) ;
    [o3,m3,c3] = param_estimation(t3,K) ; 
    [o4,m4,c4] = param_estimation(t4,K) ;
    [o5,m5,c5] = param_estimation(t5,K) ; 
    [o6,m6,c6] = param_estimation(t6,K) ;
    [o7,m7,c7] = param_estimation(t7,K) ; 
    [o8,m8,c8] = param_estimation(t8,K) ;
    [o9,m9,c9] = param_estimation(t9,K) ; 
    [o10,m10,c10] = param_estimation(t10,K) ;
    
    
    
end

