%{
allclasses = '/home/rajiv/ACADS/Sem7/PR/Assignment1/Dataset-2_real_world/b_Speaker Identification and Verification dataset/Folders_team_wise/Team2/' ; 

trFile1 = strcat(allclasses,'fgcs0/trSet1') ; 
vaFile1 = strcat(allclasses,'fgcs0/vaSet1') ; 
teFile1 = strcat(allclasses,'fgcs0/teSet1') ; 

trFile2 = strcat(allclasses,'mdmt0/trSet2') ; 
vaFile2 = strcat(allclasses,'mdmt0/vaSet2') ; 
teFile2 = strcat(allclasses,'mdmt0/teSet2') ; 

trFile3 = strcat(allclasses,'mdpk0/trSet3') ; 
vaFile3 = strcat(allclasses,'mdpk0/vaSet3') ; 
teFile3 = strcat(allclasses,'mdpk0/teSet3') ; 

trFile4 = strcat(allclasses,'mesg0/trSet4') ; 
vaFile4 = strcat(allclasses,'mesg0/vaSet4') ; 
teFile4 = strcat(allclasses,'mesg0/teSet4') ; 

trFile5 = strcat(allclasses,'mjjj0/trSet5') ; 
vaFile5 = strcat(allclasses,'mjjj0/vaSet5') ; 
teFile5 = strcat(allclasses,'mjjj0/teSet5') ; 

trFile6 = strcat(allclasses,'mjrh0/trSet6') ; 
vaFile6 = strcat(allclasses,'mjrh0/vaSet6') ; 
teFile6 = strcat(allclasses,'mjrh0/teSet6') ; 

trFile7 = strcat(allclasses,'mkaj0/trSet7') ; 
vaFile7 = strcat(allclasses,'mkaj0/vaSet7') ; 
teFile7 = strcat(allclasses,'mkaj0/teSet7') ; 

trFile8 = strcat(allclasses,'mpeb0/trSet8') ; 
vaFile8 = strcat(allclasses,'mpeb0/vaSet8') ; 
teFile8 = strcat(allclasses,'mpeb0/teSet8') ; 

trFile9 = strcat(allclasses,'mrws0/trSet9') ; 
vaFile9 = strcat(allclasses,'mrws0/vaSet9') ; 
teFile9 = strcat(allclasses,'mrws0/teSet9') ; 

trFile10 = strcat(allclasses,'mtlb0/trSet10') ; 
vaFile10 = strcat(allclasses,'mtlb0/vaSet10') ; 
teFile10 = strcat(allclasses,'mtlb0/teSet10') ; 



trSet1 = importfile2mat(trFile1) ;
teSet1 = importfile2mat(teFile1) ;
vaSet1 = importfile2mat(vaFile1) ;

trSet2 = importfile2mat(trFile2) ;
teSet2 = importfile2mat(teFile2) ;
vaSet2 = importfile2mat(vaFile2) ;

trSet3 = importfile2mat(trFile3) ;
teSet3 = importfile2mat(teFile3) ;
vaSet3 = importfile2mat(vaFile3) ;

trSet4 = importfile2mat(trFile4) ;
teSet4 = importfile2mat(teFile4) ;
vaSet4 = importfile2mat(vaFile4) ;

trSet5 = importfile2mat(trFile5) ;
teSet5 = importfile2mat(teFile5) ;
vaSet5 = importfile2mat(vaFile5) ;

trSet6 = importfile2mat(trFile6) ;
teSet6 = importfile2mat(teFile6) ;
vaSet6 = importfile2mat(vaFile6) ;

trSet7 = importfile2mat(trFile7) ;
teSet7 = importfile2mat(teFile7) ;
vaSet7 = importfile2mat(vaFile7) ;

trSet8 = importfile2mat(trFile8) ;
teSet8 = importfile2mat(teFile8) ;
vaSet8 = importfile2mat(vaFile8) ;

trSet9 = importfile2mat(trFile9) ;
teSet9 = importfile2mat(teFile9) ;
vaSet9 = importfile2mat(vaFile9) ;

trSet10 = importfile2mat(trFile10) ;
teSet10 = importfile2mat(teFile10) ;
vaSet10 = importfile2mat(vaFile10) ;

%normalise the data 
trSet1 = normalize(trSet1) ; 
teSet1 = normalize(teSet1) ; 
vaSet1 = normalize(vaSet1) ; 

trSet2 = normalize(trSet2) ; 
teSet2 = normalize(teSet2) ; 
vaSet2 = normalize(vaSet2) ; 

trSet3 = normalize(trSet3) ; 
teSet3 = normalize(teSet3) ; 
vaSet3 = normalize(vaSet3) ; 

trSet4 = normalize(trSet4) ; 
teSet4 = normalize(teSet4) ; 
vaSet4 = normalize(vaSet4) ; 

trSet5 = normalize(trSet5) ; 
teSet5 = normalize(teSet5) ; 
vaSet5 = normalize(vaSet5) ; 

trSet6 = normalize(trSet6) ; 
teSet6 = normalize(teSet6) ; 
vaSet6 = normalize(vaSet6) ; 

trSet7 = normalize(trSet7) ; 
teSet7 = normalize(teSet7) ; 
vaSet7 = normalize(vaSet7) ; 

trSet8 = normalize(trSet8) ; 
teSet8 = normalize(teSet8) ; 
vaSet8 = normalize(vaSet8) ; 

trSet9 = normalize(trSet9) ; 
teSet9 = normalize(teSet9) ; 
vaSet9 = normalize(vaSet9) ; 

trSet10 = normalize(trSet10) ; 
teSet10 = normalize(teSet10) ; 
vaSet10 = normalize(vaSet10) ; 




%y = gaussian(trSet1(1,:),meansi(:,:,1),covari(:,:,1)) ; 
K = 6 ; 
ndim =  size(trSet1,2) ;


[o2,m2,c2] = param_estimation(trSet2,K) ;
[o1,m1,c1] = param_estimation(trSet1,K) ;
[o3,m3,c3] = param_estimation(trSet3,K) ;
[o4,m4,c4] = param_estimation(trSet4,K) ;
[o5,m5,c5] = param_estimation(trSet5,K) ; 
[o6,m6,c6] = param_estimation(trSet6,K) ;
[o7,m7,c7] = param_estimation(trSet7,K) ;
[o8,m8,c8] = param_estimation(trSet8,K) ;
[o9,m9,c9] = param_estimation(trSet9,K) ;
[o10,m10,c10] = param_estimation(trSet10,K) ;
%}

%While running Check if the diagonalize is set in the loglikelihood.m file.
confusion = zeros(10,10) ; 
                                                                    %[58, 127, 196, 265, 325, 381, 448, 515, 582, 640]
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet1(1:58,:)) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet1(59:127,:)) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet1(128:196,:)) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet1(197:265,:)) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet1(266:325,:)) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet1(326:381,:)) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet1(382:448,:)) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet1(449:515,:)) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet1(516:582,:)) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet1(583:640,:)) ; 
                                                                     %[[65, 141, 217, 293, 363, 432, 512, 592, 672, 744]


confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet2(1:65,:)) ;
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet2(66:141,:)) ;
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet2(142:217,:)) ;
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet2(218:293,:)) ;
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet2(294:363,:)) ;
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet2(364:432,:)) ;
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet2(433:512,:)) ;
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet2(513:592,:)) ;
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet2(593:672,:)) ;
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet2(673:744,:)) ;


%[81, 173, 265, 357, 440, 496, 563, 630, 697, 755]
confusion = confusion_matrix(3,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet3(1:81,:));
confusion = confusion_matrix(3,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet3(82:173,:));
confusion = confusion_matrix(3,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet3(174:265,:));
confusion = confusion_matrix(3,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet3(266:357,:));
confusion = confusion_matrix(3,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet3(358:440,:));
confusion = confusion_matrix(3,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet3(441:496,:));
confusion = confusion_matrix(3,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet3(497:563,:));
confusion = confusion_matrix(3,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet3(564:630,:));
confusion = confusion_matrix(3,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet3(631:697,:));
confusion = confusion_matrix(3,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet3(698:755,:));

confusion = confusion_matrix(4,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet4(1:68,:));
confusion = confusion_matrix(4,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet4(69:147,:));
confusion = confusion_matrix(4,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet4(148:226,:));
confusion = confusion_matrix(4,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet4(227:305,:));
confusion = confusion_matrix(4,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet4(306:378,:));
confusion = confusion_matrix(4,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet4(379:454,:));
confusion = confusion_matrix(4,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet4(455:541,:));
confusion = confusion_matrix(4,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet4(542:628,:));
confusion = confusion_matrix(4,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet4(629:715,:));
confusion = confusion_matrix(4,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet4(716:795,:));

confusion = confusion_matrix(5,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet5(1:84,:));
confusion = confusion_matrix(5,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet5(85:179,:));
confusion = confusion_matrix(5,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet5(180:274,:));
confusion = confusion_matrix(5,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet5(275:369,:));
confusion = confusion_matrix(5,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet5(370:457,:));
confusion = confusion_matrix(5,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet5(458:516,:));
confusion = confusion_matrix(5,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet5(517:586,:));
confusion = confusion_matrix(5,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet5(587:656,:));
confusion = confusion_matrix(5,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet5(657:726,:));
confusion = confusion_matrix(5,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet5(727:789,:));

confusion = confusion_matrix(6,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet6(1:69,:));
confusion = confusion_matrix(6,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet6(70:149,:));
confusion = confusion_matrix(6,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet6(150:229,:));
confusion = confusion_matrix(6,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet6(230:309,:));
confusion = confusion_matrix(6,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet6(310:383,:));
confusion = confusion_matrix(6,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet6(384:448,:));
confusion = confusion_matrix(6,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet6(449:524,:));
confusion = confusion_matrix(6,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet6(525:600,:));
confusion = confusion_matrix(6,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet6(601:676,:));
confusion = confusion_matrix(6,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet6(677:744,:));

confusion = confusion_matrix(7,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet7(1:63,:));
confusion = confusion_matrix(7,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet7(64:137,:));
confusion = confusion_matrix(7,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet7(138:211,:));
confusion = confusion_matrix(7,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet7(212:285,:));
confusion = confusion_matrix(7,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet7(286:351,:));
confusion = confusion_matrix(7,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet7(352:402,:));
confusion = confusion_matrix(7,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet7(403:464,:));
confusion = confusion_matrix(7,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet7(465:526,:));
confusion = confusion_matrix(7,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet7(527:588,:));
confusion = confusion_matrix(7,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet7(589:643,:));

confusion = confusion_matrix(8,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet8(1:54,:));
confusion = confusion_matrix(8,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet8(55:119,:));
confusion = confusion_matrix(8,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet8(120:184,:));
confusion = confusion_matrix(8,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet8(185:249,:));
confusion = confusion_matrix(8,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet8(250:305,:));
confusion = confusion_matrix(8,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet8(306:383,:));
confusion = confusion_matrix(8,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet8(384:472,:));
confusion = confusion_matrix(8,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet8(473:561,:));
confusion = confusion_matrix(8,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet8(562:650,:));
confusion = confusion_matrix(8,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet8(651:729,:));

confusion = confusion_matrix(9,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet9(1:65,:));
confusion = confusion_matrix(9,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet9(66:141,:));
confusion = confusion_matrix(9,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet9(142:217,:));
confusion = confusion_matrix(9,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet9(218:293,:));
confusion = confusion_matrix(9,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet9(294:362,:));
confusion = confusion_matrix(9,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet9(363:399,:));
confusion = confusion_matrix(9,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet9(400:447,:));
confusion = confusion_matrix(9,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet9(448:495,:));
confusion = confusion_matrix(9,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet9(496:543,:));
confusion = confusion_matrix(9,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet9(544:581,:));

confusion = confusion_matrix(10,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet10(1:66,:));
confusion = confusion_matrix(10,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet10(67:143,:));
confusion = confusion_matrix(10,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet10(144:220,:));
confusion = confusion_matrix(10,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet10(221:297,:));
confusion = confusion_matrix(10,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet10(298:365,:));
confusion = confusion_matrix(10,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet10(366:441,:));
confusion = confusion_matrix(10,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet10(442:528,:));
confusion = confusion_matrix(10,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet10(529:615,:));
confusion = confusion_matrix(10,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet10(616:702,:));
confusion = confusion_matrix(10,confusion,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,teSet10(703:782,:));


disp(confusion) ; 