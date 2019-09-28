
%{
vaSet1(1:71,:));
vaSet1(72:153,:));
vaSet1(154:235,:));
vaSet1(236:317,:));
vaSet1(318:392,:));
vaSet1(393:441,:));
vaSet1(442:501,:));
vaSet1(502:561,:));
vaSet1(562:621,:));
vaSet1(622:674,:));

vaSet2(1:88,:));
vaSet2(89:187,:));
vaSet2(188:286,:));
vaSet2(287:385,:));
vaSet2(386:474,:));
vaSet2(475:534,:));
vaSet2(535:605,:));
vaSet2(606:676,:));
vaSet2(677:747,:));
vaSet2(748:811,:));

vaSet3(1:42,:));
vaSet3(43:95,:));
vaSet3(96:148,:));
vaSet3(149:201,:));
vaSet3(202:244,:));
vaSet3(245:311,:));
vaSet3(312:389,:));
vaSet3(390:467,:));
vaSet3(468:545,:));
vaSet3(546:616,:));

vaSet4(1:47,:));
vaSet4(48:105,:));
vaSet4(106:163,:));
vaSet4(164:221,:));
vaSet4(222:273,:));
vaSet4(274:315,:));
vaSet4(316:368,:));
vaSet4(369:421,:));
vaSet4(422:474,:));
vaSet4(475:519,:));

vaSet5(1:126,:));
vaSet5(127:263,:));
vaSet5(264:400,:));
vaSet5(401:537,:));
vaSet5(538:667,:));
vaSet5(668:747,:));
vaSet5(748:838,:));
vaSet5(839:929,:));
vaSet5(930:1020,:));
vaSet5(1021:1105,:));

vaSet6(1:103,:));
vaSet6(104:217,:));
vaSet6(218:331,:));
vaSet6(332:445,:));
vaSet6(446:553,:));
vaSet6(554:621,:));
vaSet6(622:700,:));
vaSet6(701:779,:));
vaSet6(780:858,:));
vaSet6(859:928,:));

vaSet7(1:58,:));
vaSet7(59:127,:));
vaSet7(128:196,:));
vaSet7(197:265,:));
vaSet7(266:325,:));
vaSet7(326:376,:));
vaSet7(377:438,:));
vaSet7(439:500,:));
vaSet7(501:562,:));
vaSet7(563:614,:));

vaSet8(1:92,:));
vaSet8(93:195,:));
vaSet8(196:298,:));
vaSet8(299:401,:));
vaSet8(402:498,:));
vaSet8(499:566,:));
vaSet8(567:645,:));
vaSet8(646:724,:));
vaSet8(725:803,:));
vaSet8(804:875,:));

vaSet9(1:93,:));
vaSet9(94:197,:));
vaSet9(198:301,:));
vaSet9(302:405,:));
vaSet9(406:503,:));
vaSet9(504:575,:));
vaSet9(576:658,:));
vaSet9(659:741,:));
vaSet9(742:824,:));
vaSet9(825:901,:));

vaSet10(1:45,:));
vaSet10(46:101,:));
vaSet10(102:157,:));
vaSet10(158:213,:));
vaSet10(214:262,:));
vaSet10(263:325,:));
vaSet10(326:399,:));
vaSet10(400:473,:));
vaSet10(474:547,:));
vaSet10(548:612,:));
%}

load('b_Speaker Identification and Verification dataset/speech_normalized_K6_1.mat') ;
allomegas(:,:,:,1) = o1 ; 
allomegas(:,:,:,2) = o2 ; 
allomegas(:,:,:,3) = o3 ; 
allomegas(:,:,:,4) = o4 ; 
allomegas(:,:,:,5) = o5 ; 
allomegas(:,:,:,6) = o6 ; 
allomegas(:,:,:,7) = o7 ; 
allomegas(:,:,:,8) = o8 ; 
allomegas(:,:,:,9) = o9 ; 
allomegas(:,:,:,10) = o10 ; 

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

thresholds = zeros(1,10) ; 
thresholds(1) = thresholds(1)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet1(1:71,:));

thresholds(1) = thresholds(1)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet1(72:153,:));

thresholds(1) = thresholds(1)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet1(154:235,:));

thresholds(1) = thresholds(1)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet1(236:317,:));

thresholds(1) = thresholds(1)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet1(318:392,:));

thresholds(1) = thresholds(1)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet1(393:441,:));

thresholds(1) = thresholds(1)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet1(442:501,:));

thresholds(1) = thresholds(1)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet1(502:561,:));

thresholds(1) = thresholds(1)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet1(562:621,:));

thresholds(1) = thresholds(1)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet1(622:674,:));


thresholds(2) = thresholds(2)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet2(1:88,:));

thresholds(2) = thresholds(2)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet2(89:187,:));

thresholds(2) = thresholds(2)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet2(188:286,:));
thresholds(2) = thresholds(2)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet2(287:385,:));

thresholds(2) = thresholds(2)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet2(386:474,:));

thresholds(2) = thresholds(2)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet2(475:534,:));

thresholds(2) = thresholds(2)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet2(535:605,:));

thresholds(2) = thresholds(2)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet2(606:676,:));

thresholds(2) = thresholds(2)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet2(677:747,:));
thresholds(2) = thresholds(2)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet2(748:811,:));

thresholds(3) = thresholds(3)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet3(1:42,:));

thresholds(3) = thresholds(3)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet3(43:95,:));

thresholds(3) = thresholds(3)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet3(96:148,:));

thresholds(3) = thresholds(3)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet3(149:201,:));

thresholds(3) = thresholds(3)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet3(202:244,:));

thresholds(3) = thresholds(3)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet3(245:311,:));

thresholds(3) = thresholds(3)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet3(312:389,:));
thresholds(3) = thresholds(3)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet3(390:467,:));

thresholds(3) = thresholds(3)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet3(468:545,:));

thresholds(3) = thresholds(3)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet3(546:616,:));


thresholds(4) = thresholds(4)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet4(1:47,:));

thresholds(4) = thresholds(4)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet4(48:105,:));

thresholds(4) = thresholds(4)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet4(106:163,:));

thresholds(4) = thresholds(4)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet4(164:221,:));

thresholds(4) = thresholds(4)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet4(222:273,:));

thresholds(4) = thresholds(4)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet4(274:315,:));

thresholds(4) = thresholds(4)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet4(316:368,:));

thresholds(4) = thresholds(4)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet4(369:421,:));

thresholds(4) = thresholds(4)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet4(422:474,:));

thresholds(4) = thresholds(4)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet4(475:519,:));

thresholds(5) = thresholds(5)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet5(1:126,:));

thresholds(5) = thresholds(5)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet5(127:263,:));

thresholds(5) = thresholds(5)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet5(264:400,:));

thresholds(5) = thresholds(5)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet5(401:537,:));

thresholds(5) = thresholds(5)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet5(538:667,:));

thresholds(5) = thresholds(5)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet5(668:747,:));

thresholds(5) = thresholds(5)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet5(748:838,:));

thresholds(5) = thresholds(5)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet5(839:929,:));

thresholds(5) = thresholds(5)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet5(930:1020,:));

thresholds(5) = thresholds(5)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet5(1021:1105,:));


thresholds(6) = thresholds(6)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet6(1:103,:));

thresholds(6) = thresholds(6)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet6(104:217,:));

thresholds(6) = thresholds(6)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet6(218:331,:));

thresholds(6) = thresholds(6)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet6(332:445,:));

thresholds(6) = thresholds(6)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet6(446:553,:));

thresholds(6) = thresholds(6)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet6(554:621,:));

thresholds(6) = thresholds(6)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet6(622:700,:));

thresholds(6) = thresholds(6)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet6(701:779,:));

thresholds(6) = thresholds(6)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet6(780:858,:));

thresholds(6) = thresholds(6)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet6(859:928,:));

thresholds(7) = thresholds(7)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet7(1:58,:));

thresholds(7) = thresholds(7)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet7(59:127,:));

thresholds(7) = thresholds(7)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet7(128:196,:));

thresholds(7) = thresholds(7)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet7(197:265,:));

thresholds(7) = thresholds(7)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet7(266:325,:));

thresholds(7) = thresholds(7)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet7(326:376,:));

thresholds(7) = thresholds(7)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet7(377:438,:));

thresholds(7) = thresholds(7)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet7(439:500,:));

thresholds(7) = thresholds(7)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet7(501:562,:));

thresholds(7) = thresholds(7)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet7(563:614,:));

thresholds(8) = thresholds(8)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet8(1:92,:));

thresholds(8) = thresholds(8)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet8(93:195,:));

thresholds(8) = thresholds(8)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet8(196:298,:));

thresholds(8) = thresholds(8)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet8(299:401,:));

thresholds(8) = thresholds(8)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet8(402:498,:));

thresholds(8) = thresholds(8)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet8(499:566,:));

thresholds(8) = thresholds(8)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet8(567:645,:));

thresholds(8) = thresholds(8)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet8(646:724,:));

thresholds(8) = thresholds(8)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet8(725:803,:));

thresholds(8) = thresholds(8)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet8(804:875,:));

thresholds(9) = thresholds(9)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet9(1:93,:));

thresholds(9) = thresholds(9)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet9(94:197,:));

thresholds(9) = thresholds(9)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet9(198:301,:));

thresholds(9) = thresholds(9)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet9(302:405,:));

thresholds(9) = thresholds(9)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet9(406:503,:));

thresholds(9) = thresholds(9)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet9(504:575,:));

thresholds(9) = thresholds(9)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet9(576:658,:));

thresholds(9) = thresholds(9)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet9(659:741,:));

thresholds(9) = thresholds(9)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet9(742:824,:));

thresholds(9) = thresholds(9)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet9(825:901,:));

thresholds(10) = thresholds(10)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet10(1:45,:));

thresholds(10) = thresholds(10)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet10(46:101,:));

thresholds(10) = thresholds(10)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet10(102:157,:));

thresholds(10) = thresholds(10)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet10(158:213,:));

thresholds(10) = thresholds(10)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet10(214:262,:));

thresholds(10) = thresholds(10)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet10(263:325,:));

thresholds(10) = thresholds(10)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet10(326:399,:));

thresholds(10) = thresholds(10)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet10(400:473,:));

thresholds(10) = thresholds(10)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet10(474:547,:));

thresholds(10) = thresholds(10)+likelihoodratio_spkr_vrfy(1,10,allomegas,allmeans,allcovs,vaSet10(548:612,:));

thresholds = thresholds/10 ; 
disp(thresholds) ; 