function y = universal_background_model( class,threshold,vaSet1,vaSet2,vaSet3,vaSet4,vaSet5,vaSet6,vaSet7,vaSet8,vaSet9,vaSet10,oT,mT,cT,oI,mI,cI )
%UNIVERSAL_BACKGROUND_MODEL Summary of this function goes here
%   Detailed explanation goes here
disp('came here') ; 
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

disp('came here') ; 

y(1,1) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v11) ;% tp = tp ;% fn = fn ;%  
y(1,2) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v12) ;% tp = tp ;% fn = fn ;%
y(1,3) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v13) ;% tp = tp ;% fn = fn ;%
y(1,4) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v14) ;% tp = tp ;% fn = fn ;%
y(1,5) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v15) ;% tp = tp ;% fn = fn ;%
y(1,6) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v16) ;% tp = tp ;% fn = fn ;%
y(1,7) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v17) ;% tp = tp ;% fn = fn ;%
y(1,8) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v18) ;% tp = tp ;% fn = fn ;%
y(1,9) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v19) ;% tp = tp ;% fn = fn ;%
y(1,10) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v110) ;% tp = tp ;% fn = fn ;%
                                                                     %[[65, 141, 217, 293, 363, 432, 512, 592, 672, 744]


y(2,1) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v21) ;% fp=fp ;% tn=tn ;% 
y(2,2) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v22) ;%fp=fp ;% tn=tn ;%
y(2,3) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v23) ;%fp=fp ;% tn=tn ;%
y(2,4) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v24) ;%fp=fp ;% tn=tn ;%
y(2,5) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v25) ;%fp=fp ;% tn=tn ;%
y(2,6) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v26) ;%fp=fp ;% tn=tn ;%
y(2,7) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v27) ;%fp=fp ;% tn=tn ;%
y(2,8) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v28) ;%fp=fp ;% tn=tn ;%
y(2,9) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v29) ;%fp=fp ;% tn=tn ;%
y(2,10) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v210) ;%fp=fp ;% tn=tn ;%


%[81, 173, 265, 357, 440, 496, 563, 630, 697, 755]

y(3,1) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v31);%fp=fp ;% tn=tn ;%
y(3,2) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v32);%fp=fp ;% tn=tn ;%
y(3,3) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v33);%fp=fp ;% tn=tn ;%
y(3,4) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v34);%fp=fp ;% tn=tn ;%
y(3,5) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v35);%fp=fp ;% tn=tn ;%
y(3,6) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v36);%fp=fp ;% tn=tn ;%
y(3,7) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v37);%fp=fp ;% tn=tn ;%
y(3,8) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v38);%fp=fp ;% tn=tn ;%
y(3,9) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v39);%fp=fp ;% tn=tn ;%
y(3,10) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v310);%fp=fp ;% tn=tn ;%

y(4,1) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v41);%fp=fp ;% tn=tn ;%
y(4,2) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v42);%fp=fp ;% tn=tn ;%
y(4,3) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v43);%fp=fp ;% tn=tn ;%
y(4,4) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v44);%fp=fp ;% tn=tn ;%
y(4,5) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v45);%fp=fp ;% tn=tn ;%
y(4,6) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v46);%fp=fp ;% tn=tn ;%
y(4,7) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v47);%fp=fp ;% tn=tn ;%
y(4,8) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v48);%fp=fp ;% tn=tn ;%
y(4,9) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v49);%fp=fp ;% tn=tn ;%
y(4,10) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v410);%fp=fp ;% tn=tn ;%

y(5,1) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v51);%fp=fp ;% tn=tn ;%
y(5,2) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v52);%fp=fp ;% tn=tn ;%
y(5,3) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v53);%fp=fp ;% tn=tn ;%
y(5,4) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v54);%fp=fp ;% tn=tn ;%
y(5,5) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v55);%fp=fp ;% tn=tn ;%
y(5,6) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v56);%fp=fp ;% tn=tn ;%
y(5,7) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v57);%fp=fp ;% tn=tn ;%
y(5,8) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v58);%fp=fp ;% tn=tn ;%
y(5,9) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v59);%fp=fp ;% tn=tn ;%
y(5,10) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v510);%fp=fp ;% tn=tn ;%

y(6,1) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v61);% fp=fp ;% tn=tn ;%
y(6,2) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v62);%fp=fp ;% tn=tn ;%
y(6,3) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v63);%fp=fp ;% tn=tn ;%
y(6,4) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v64);%fp=fp ;% tn=tn ;%
y(6,5) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v65);%fp=fp ;% tn=tn ;%
y(6,6) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v66);%fp=fp ;% tn=tn ;%
y(6,7) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v67);%fp=fp ;% tn=tn ;%
y(6,8) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v68);%fp=fp ;% tn=tn ;%
y(6,9) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v69);%fp=fp ;% tn=tn ;%
y(6,10) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v610);%fp=fp ;% tn=tn ;%

y(7,1) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v71);%fp=fp ;% tn=tn ;%
y(7,2) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v72);%fp=fp ;% tn=tn ;%
y(7,3) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v73);%fp=fp ;% tn=tn ;%
y(7,4) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v74);%fp=fp ;% tn=tn ;%
y(7,5) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v75);%fp=fp ;% tn=tn ;%
y(7,6) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v76);%fp=fp ;% tn=tn ;%
y(7,7) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v77);%fp=fp ;% tn=tn ;%
y(7,8) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v78);%fp=fp ;% tn=tn ;%
y(7,9) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v79);%fp=fp ;% tn=tn ;%
y(7,10) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v710);%fp=fp ;% tn=tn ;%

y(8,1) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v81);% fp=fp ;% tn=tn ;%
y(8,2) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v82);%fp=fp ;% tn=tn ;%
y(8,3) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v83);%fp=fp ;% tn=tn ;%
y(8,4) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v84);%fp=fp ;% tn=tn ;%
y(8,5) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v85);%fp=fp ;% tn=tn ;%
y(8,6) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v86);%fp=fp ;% tn=tn ;%
y(8,7) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v87);%fp=fp ;% tn=tn ;%
y(8,8) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v88);%fp=fp ;% tn=tn ;%
y(8,9) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v89);%fp=fp ;% tn=tn ;%
y(8,10) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v810);%fp=fp ;% tn=tn ;%

y(9,1) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v91);%fp=fp ;% tn=tn ;%
y(9,2) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v92);%fp=fp ;% tn=tn ;%
y(9,3) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v93);%fp=fp ;% tn=tn ;%
y(9,4) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v94);%fp=fp ;% tn=tn ;%
y(9,5) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v95);%fp=fp ;% tn=tn ;%
y(9,6) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v96);%fp=fp ;% tn=tn ;%
y(9,7) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v97);%fp=fp ;% tn=tn ;%
y(9,8) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v98);%fp=fp ;% tn=tn ;%
y(9,9) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v99);%fp=fp ;% tn=tn ;%
y(9,10) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v910);%fp=fp ;% tn=tn ;%

y(10,1) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v101);%fp=fp ;% tn=tn ;%
y(10,2) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v102);%fp=fp ;% tn=tn ;%
y(10,3) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v103);%fp=fp ;% tn=tn ;%
y(10,4) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v104);%fp=fp ;% tn=tn ;%
y(10,5) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v105);%fp=fp ;% tn=tn ;%
y(10,6) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v106);%fp=fp ;% tn=tn ;%
y(10,7) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v107);%fp=fp ;% tn=tn ;%
y(10,8) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v108);%fp=fp ;% tn=tn ;%
y(10,9) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v109);%fp=fp ;% tn=tn ;%
y(10,10) = binary_classifier_ubm(threshold,oT,mT,cT,oI,mI,cI,v1010);%fp=fp ;% tn=tn ;%

end
