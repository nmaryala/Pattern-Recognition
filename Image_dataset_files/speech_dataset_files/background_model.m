function y = background_model(class,threshold,vaSet1,vaSet2,vaSet3,vaSet4,vaSet5,vaSet6,vaSet7,vaSet8,vaSet9,vaSet10,allomegas,allmeans,allcovs )
%BACKGROUND_MODEL Summary of this function goes here
%   Detailed explanation goes here
%y = zeros(10,10)  ;


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


y(1,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v11) ;% tp = tp ;% fn = fn ;%  
y(1,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v12) ;% tp = tp ;% fn = fn ;%
y(1,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v13) ;% tp = tp ;% fn = fn ;%
y(1,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v14) ;% tp = tp ;% fn = fn ;%
y(1,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v15) ;% tp = tp ;% fn = fn ;%
y(1,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v16) ;% tp = tp ;% fn = fn ;%
y(1,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v17) ;% tp = tp ;% fn = fn ;%
y(1,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v18) ;% tp = tp ;% fn = fn ;%
y(1,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v19) ;% tp = tp ;% fn = fn ;%
y(1,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v110) ;% tp = tp ;% fn = fn ;%
                                                                     %[[65, 141, 217, 293, 363, 432, 512, 592, 672, 744]


y(2,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v21) ;% fp=fp ;% tn=tn ;% 
y(2,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v22) ;%fp=fp ;% tn=tn ;%
y(2,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v23) ;%fp=fp ;% tn=tn ;%
y(2,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v24) ;%fp=fp ;% tn=tn ;%
y(2,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v25) ;%fp=fp ;% tn=tn ;%
y(2,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v26) ;%fp=fp ;% tn=tn ;%
y(2,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v27) ;%fp=fp ;% tn=tn ;%
y(2,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v28) ;%fp=fp ;% tn=tn ;%
y(2,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v29) ;%fp=fp ;% tn=tn ;%
y(2,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v210) ;%fp=fp ;% tn=tn ;%


%[81, 173, 265, 357, 440, 496, 563, 630, 697, 755]
y(3,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v31);%fp=fp ;% tn=tn ;%
y(3,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v32);%fp=fp ;% tn=tn ;%
y(3,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v33);%fp=fp ;% tn=tn ;%
y(3,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v34);%fp=fp ;% tn=tn ;%
y(3,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v35);%fp=fp ;% tn=tn ;%
y(3,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v36);%fp=fp ;% tn=tn ;%
y(3,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v37);%fp=fp ;% tn=tn ;%
y(3,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v38);%fp=fp ;% tn=tn ;%
y(3,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v39);%fp=fp ;% tn=tn ;%
y(3,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v310);%fp=fp ;% tn=tn ;%

y(4,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v41);%fp=fp ;% tn=tn ;%
y(4,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v42);%fp=fp ;% tn=tn ;%
y(4,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v43);%fp=fp ;% tn=tn ;%
y(4,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v44);%fp=fp ;% tn=tn ;%
y(4,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v45);%fp=fp ;% tn=tn ;%
y(4,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v46);%fp=fp ;% tn=tn ;%
y(4,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v47);%fp=fp ;% tn=tn ;%
y(4,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v48);%fp=fp ;% tn=tn ;%
y(4,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v49);%fp=fp ;% tn=tn ;%
y(4,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v410);%fp=fp ;% tn=tn ;%

y(5,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v51);%fp=fp ;% tn=tn ;%
y(5,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v52);%fp=fp ;% tn=tn ;%
y(5,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v53);%fp=fp ;% tn=tn ;%
y(5,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v54);%fp=fp ;% tn=tn ;%
y(5,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v55);%fp=fp ;% tn=tn ;%
y(5,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v56);%fp=fp ;% tn=tn ;%
y(5,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v57);%fp=fp ;% tn=tn ;%
y(5,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v58);%fp=fp ;% tn=tn ;%
y(5,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v59);%fp=fp ;% tn=tn ;%
y(5,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v510);%fp=fp ;% tn=tn ;%

y(6,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v61);% fp=fp ;% tn=tn ;%
y(6,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v62);%fp=fp ;% tn=tn ;%
y(6,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v63);%fp=fp ;% tn=tn ;%
y(6,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v64);%fp=fp ;% tn=tn ;%
y(6,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v65);%fp=fp ;% tn=tn ;%
y(6,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v66);%fp=fp ;% tn=tn ;%
y(6,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v67);%fp=fp ;% tn=tn ;%
y(6,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v68);%fp=fp ;% tn=tn ;%
y(6,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v69);%fp=fp ;% tn=tn ;%
y(6,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v610);%fp=fp ;% tn=tn ;%

y(7,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v71);%fp=fp ;% tn=tn ;%
y(7,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v72);%fp=fp ;% tn=tn ;%
y(7,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v73);%fp=fp ;% tn=tn ;%
y(7,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v74);%fp=fp ;% tn=tn ;%
y(7,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v75);%fp=fp ;% tn=tn ;%
y(7,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v76);%fp=fp ;% tn=tn ;%
y(7,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v77);%fp=fp ;% tn=tn ;%
y(7,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v78);%fp=fp ;% tn=tn ;%
y(7,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v79);%fp=fp ;% tn=tn ;%
y(7,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v710);%fp=fp ;% tn=tn ;%

y(8,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v81);% fp=fp ;% tn=tn ;%
y(8,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v82);%fp=fp ;% tn=tn ;%
y(8,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v83);%fp=fp ;% tn=tn ;%
y(8,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v84);%fp=fp ;% tn=tn ;%
y(8,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v85);%fp=fp ;% tn=tn ;%
y(8,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v86);%fp=fp ;% tn=tn ;%
y(8,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v87);%fp=fp ;% tn=tn ;%
y(8,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v88);%fp=fp ;% tn=tn ;%
y(8,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v89);%fp=fp ;% tn=tn ;%
y(8,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v810);%fp=fp ;% tn=tn ;%

y(9,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v91);%fp=fp ;% tn=tn ;%
y(9,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v92);%fp=fp ;% tn=tn ;%
y(9,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v93);%fp=fp ;% tn=tn ;%
y(9,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v94);%fp=fp ;% tn=tn ;%
y(9,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v95);%fp=fp ;% tn=tn ;%
y(9,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v96);%fp=fp ;% tn=tn ;%
y(9,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v97);%fp=fp ;% tn=tn ;%
y(9,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v98);%fp=fp ;% tn=tn ;%
y(9,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v99);%fp=fp ;% tn=tn ;%
y(9,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v910);%fp=fp ;% tn=tn ;%

y(10,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v101);%fp=fp ;% tn=tn ;%
y(10,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v102);%fp=fp ;% tn=tn ;%
y(10,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v103);%fp=fp ;% tn=tn ;%
y(10,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v104);%fp=fp ;% tn=tn ;%
y(10,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v105);%fp=fp ;% tn=tn ;%
y(10,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v106);%fp=fp ;% tn=tn ;%
y(10,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v107);%fp=fp ;% tn=tn ;%
y(10,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v108);%fp=fp ;% tn=tn ;%
y(10,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v109);%fp=fp ;% tn=tn ;%
y(10,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,v1010);%fp=fp ;% tn=tn ;%

                                                                     
end

