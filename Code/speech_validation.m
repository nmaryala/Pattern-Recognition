
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
vaSet10 = importfile2mat(vaFile10) 
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

v11=vaSet1(1:71,:);
v12=vaSet1(72:153,:);
v13=vaSet1(154:235,:);
v14=vaSet1(236:317,:);
v15=vaSet1(318:392,:);
v16=vaSet1(393:441,:);
v17=vaSet1(442:501,:);
v18=vaSet1(502:561,:);
v19=vaSet1(562:621,:);
v110=vaSet1(622:674,:);

v21=vaSet2(1:88,:);
v22=vaSet2(89:187,:);
v23=vaSet2(188:286,:);
v24=vaSet2(287:385,:);
v25=vaSet2(386:474,:);
v26=vaSet2(475:534,:);
v27=vaSet2(535:605,:);
v28=vaSet2(606:676,:);
v29=vaSet2(677:747,:);
v210=vaSet2(748:811,:);

v31=vaSet3(1:42,:);
v32=vaSet3(43:95,:);
v33=vaSet3(96:148,:);
v34=vaSet3(149:201,:);
v35=vaSet3(202:244,:);
v36=vaSet3(245:311,:);
v37=vaSet3(312:389,:);
v38=vaSet3(390:467,:);
v39=vaSet3(468:545,:);
v310=vaSet3(546:616,:);

v41=vaSet4(1:47,:);
v42=vaSet4(48:105,:);
v43=vaSet4(106:163,:);
v44=vaSet4(164:221,:);
v45=vaSet4(222:273,:);
v46=vaSet4(274:315,:);
v47=vaSet4(316:368,:);
v48=vaSet4(369:421,:);
v49=vaSet4(422:474,:);
v410=vaSet4(475:519,:);

v51=vaSet5(1:126,:);
v52=vaSet5(127:263,:);
v53=vaSet5(264:400,:);
v54=vaSet5(401:537,:);
v55=vaSet5(538:667,:);
v56=vaSet5(668:747,:);
v57=vaSet5(748:838,:);
v58=vaSet5(839:929,:);
v59=vaSet5(930:1020,:);
v510=vaSet5(1021:1105,:);

v61=vaSet6(1:103,:);
v62=vaSet6(104:217,:);
v63=vaSet6(218:331,:);
v64=vaSet6(332:445,:);
v65=vaSet6(446:553,:);
v66=vaSet6(554:621,:);
v67=vaSet6(622:700,:);
v68=vaSet6(701:779,:);
v69=vaSet6(780:858,:);
v610=vaSet6(859:928,:);

v71=vaSet7(1:58,:);
v72=vaSet7(59:127,:);
v73=vaSet7(128:196,:);
v74=vaSet7(197:265,:);
v75=vaSet7(266:325,:);
v76=vaSet7(326:376,:);
v77=vaSet7(377:438,:);
v78=vaSet7(439:500,:);
v79=vaSet7(501:562,:);
v710=vaSet7(563:614,:);

v81=vaSet8(1:92,:);
v82=vaSet8(93:195,:);
v83=vaSet8(196:298,:);
v84=vaSet8(299:401,:);
v85=vaSet8(402:498,:);
v86=vaSet8(499:566,:);
v87=vaSet8(567:645,:);
v88=vaSet8(646:724,:);
v89=vaSet8(725:803,:);
v810=vaSet8(804:875,:);

v91=vaSet9(1:93,:);
v92=vaSet9(94:197,:);
v93=vaSet9(198:301,:);
v94=vaSet9(302:405,:);
v95=vaSet9(406:503,:);
v96=vaSet9(504:575,:);
v97=vaSet9(576:658,:);
v98=vaSet9(659:741,:);
v99=vaSet9(742:824,:);
v910=vaSet9(825:901,:);

v101=vaSet10(1:45,:);
v102=vaSet10(46:101,:);
v103=vaSet10(102:157,:);
v104=vaSet10(158:213,:);
v105=vaSet10(214:262,:);
v106=vaSet10(263:325,:);
v107=vaSet10(326:399,:);
v108=vaSet10(400:473,:);
v109=vaSet10(474:547,:);
v1010=vaSet10(548:612,:);



%y = gaussian(trSet1(1,:),meansi(:,:,1),covari(:,:,1)) ; 
K = 10 ; 
ndim =  size(trSet1,2) ;

disp('estimating params') ; 
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
disp('param est done') ; 

%While running Check if the diagonalize is set in the loglikelihood.m file.
confusion = zeros(10,10) ; 
                                                                    %[58, 127, 196, 265, 325, 381, 448, 515, 582, 640]
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v11) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v12) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v13) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v14) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v15) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v16) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v17) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v18) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v19) ; 
confusion = confusion_matrix(1,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v110) ; 
                                                                    %[[65, 141, 217, 293, 363, 432, 512, 592, 672, 744]
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v21) ; 
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v22) ; 
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v23) ; 
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v24) ; 
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v25) ; 
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v26) ; 
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v27) ; 
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v28) ; 
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v29) ; 
confusion = confusion_matrix(2,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v210) ; 

confusion = confusion_matrix(3,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v31) ; 
confusion = confusion_matrix(3,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v32) ; 
confusion = confusion_matrix(3,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v33) ; 
confusion = confusion_matrix(3,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v34) ; 
confusion = confusion_matrix(3,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v35) ; 
confusion = confusion_matrix(3,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v36) ; 
confusion = confusion_matrix(3,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v37) ; 
confusion = confusion_matrix(3,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v38) ; 
confusion = confusion_matrix(3,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v39) ; 
confusion = confusion_matrix(3,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v310) ; 

confusion = confusion_matrix(4,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v41) ; 
confusion = confusion_matrix(4,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v42) ; 
confusion = confusion_matrix(4,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v43) ; 
confusion = confusion_matrix(4,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v44) ; 
confusion = confusion_matrix(4,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v45) ; 
confusion = confusion_matrix(4,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v46) ; 
confusion = confusion_matrix(4,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v47) ; 
confusion = confusion_matrix(4,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v48) ; 
confusion = confusion_matrix(4,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v49) ; 
confusion = confusion_matrix(4,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v410) ; 
disp('calc confusion2') ; 
confusion = confusion_matrix(5,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v51) ; 
confusion = confusion_matrix(5,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v52) ; 
confusion = confusion_matrix(5,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v53) ; 
confusion = confusion_matrix(5,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v54) ; 
confusion = confusion_matrix(5,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v55) ; 
confusion = confusion_matrix(5,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v56) ; 
confusion = confusion_matrix(5,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v57) ; 
confusion = confusion_matrix(5,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v58) ; 
confusion = confusion_matrix(5,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v59) ; 
confusion = confusion_matrix(5,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v510) ; 

confusion = confusion_matrix(6,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v61) ; 
confusion = confusion_matrix(6,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v62) ; 
confusion = confusion_matrix(6,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v63) ; 
confusion = confusion_matrix(6,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v64) ; 
confusion = confusion_matrix(6,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v65) ; 
confusion = confusion_matrix(6,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v66) ; 
confusion = confusion_matrix(6,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v67) ; 
confusion = confusion_matrix(6,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v68) ; 
confusion = confusion_matrix(6,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v69) ; 
confusion = confusion_matrix(6,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v610) ; 

confusion = confusion_matrix(7,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v71) ; 
confusion = confusion_matrix(7,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v72) ; 
confusion = confusion_matrix(7,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v73) ; 
confusion = confusion_matrix(7,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v74) ; 
confusion = confusion_matrix(7,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v75) ; 
confusion = confusion_matrix(7,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v76) ; 
confusion = confusion_matrix(7,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v77) ; 
confusion = confusion_matrix(7,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v78) ; 
confusion = confusion_matrix(7,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v79) ; 
confusion = confusion_matrix(7,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v710) ; 
disp('calc confusion3') ; 
confusion = confusion_matrix(8,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v81) ; 
confusion = confusion_matrix(8,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v82) ; 
confusion = confusion_matrix(8,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v83) ; 
confusion = confusion_matrix(8,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v84) ; 
confusion = confusion_matrix(8,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v85) ; 
confusion = confusion_matrix(8,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v86) ; 
confusion = confusion_matrix(8,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v87) ; 
confusion = confusion_matrix(8,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v88) ; 
confusion = confusion_matrix(8,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v89) ; 
confusion = confusion_matrix(8,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v810) ; 

confusion = confusion_matrix(9,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v91) ; 
confusion = confusion_matrix(9,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v92) ; 
confusion = confusion_matrix(9,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v93) ; 
confusion = confusion_matrix(9,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v94) ; 
confusion = confusion_matrix(9,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v95) ; 
confusion = confusion_matrix(9,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v96) ; 
confusion = confusion_matrix(9,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v97) ; 
confusion = confusion_matrix(9,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v98) ; 
confusion = confusion_matrix(9,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v99) ; 
confusion = confusion_matrix(9,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v910) ; 

confusion = confusion_matrix(10,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v101) ; 
confusion = confusion_matrix(10,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v102) ; 
confusion = confusion_matrix(10,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v103) ; 
confusion = confusion_matrix(10,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v104) ; 
confusion = confusion_matrix(10,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v105) ; 
confusion = confusion_matrix(10,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v106) ; 
confusion = confusion_matrix(10,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v107) ; 
confusion = confusion_matrix(10,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v108) ; 
confusion = confusion_matrix(10,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v109) ; 
confusion = confusion_matrix(10,confusion, o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,v1010) ; 

disp('calc confusion4') ; 
acc = 0 ; 
for k = 1:10 
    acc = acc+confusion(k,k) ; 
end
acc = acc/100 ; 
disp(acc) ; 