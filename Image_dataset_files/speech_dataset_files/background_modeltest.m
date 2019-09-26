function y = background_modeltest(class,threshold,teSet1,teSet2,teSet3,teSet4,teSet5,teSet6,teSet7,teSet8,teSet9,teSet10,allomegas,allmeans,allcovs )
%BACKGROUND_MODELTEST Summary of this function goes here
%   Detailed explanation goes here

disp('came here') ; 
y(1,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet1(1:58,:)) ;% tp = tp ;% fn = fn ;%  
y(1,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet1(59:127,:)) ;% tp = tp ;% fn = fn ;%
y(1,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet1(128:196,:)) ;% tp = tp ;% fn = fn ;%
y(1,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet1(197:265,:)) ;% tp = tp ;% fn = fn ;%
y(1,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet1(266:325,:)) ;% tp = tp ;% fn = fn ;%
y(1,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet1(326:381,:)) ;% tp = tp ;% fn = fn ;%
y(1,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet1(382:448,:)) ;% tp = tp ;% fn = fn ;%
y(1,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet1(449:515,:)) ;% tp = tp ;% fn = fn ;%
y(1,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet1(516:582,:)) ;% tp = tp ;% fn = fn ;%
y(1,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet1(583:640,:)) ;% tp = tp ;% fn = fn ;%
                                                                     %[[65, 141, 217, 293, 363, 432, 512, 592, 672, 744]


y(2,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet2(1:65,:)) ;% fp=fp ;% tn=tn ;% 
y(2,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet2(66:141,:)) ;%fp=fp ;% tn=tn ;%
y(2,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet2(142:217,:)) ;%fp=fp ;% tn=tn ;%
y(2,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet2(218:293,:)) ;%fp=fp ;% tn=tn ;%
y(2,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet2(294:363,:)) ;%fp=fp ;% tn=tn ;%
y(2,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet2(364:432,:)) ;%fp=fp ;% tn=tn ;%
y(2,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet2(433:512,:)) ;%fp=fp ;% tn=tn ;%
y(2,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet2(513:592,:)) ;%fp=fp ;% tn=tn ;%
y(2,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet2(593:672,:)) ;%fp=fp ;% tn=tn ;%
y(2,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet2(673:744,:)) ;%fp=fp ;% tn=tn ;%


%[81, 173, 265, 357, 440, 496, 563, 630, 697, 755]
y(3,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet3(1:81,:));%fp=fp ;% tn=tn ;%
y(3,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet3(82:173,:));%fp=fp ;% tn=tn ;%
y(3,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet3(174:265,:));%fp=fp ;% tn=tn ;%
y(3,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet3(266:357,:));%fp=fp ;% tn=tn ;%
y(3,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet3(358:440,:));%fp=fp ;% tn=tn ;%
y(3,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet3(441:496,:));%fp=fp ;% tn=tn ;%
y(3,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet3(497:563,:));%fp=fp ;% tn=tn ;%
y(3,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet3(564:630,:));%fp=fp ;% tn=tn ;%
y(3,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet3(631:697,:));%fp=fp ;% tn=tn ;%
y(3,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet3(698:755,:));%fp=fp ;% tn=tn ;%

y(4,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet4(1:68,:));%fp=fp ;% tn=tn ;%
y(4,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet4(69:147,:));%fp=fp ;% tn=tn ;%
y(4,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet4(148:226,:));%fp=fp ;% tn=tn ;%
y(4,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet4(227:305,:));%fp=fp ;% tn=tn ;%
y(4,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet4(306:378,:));%fp=fp ;% tn=tn ;%
y(4,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet4(379:454,:));%fp=fp ;% tn=tn ;%
y(4,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet4(455:541,:));%fp=fp ;% tn=tn ;%
y(4,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet4(542:628,:));%fp=fp ;% tn=tn ;%
y(4,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet4(629:715,:));%fp=fp ;% tn=tn ;%
y(4,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet4(716:795,:));%fp=fp ;% tn=tn ;%

y(5,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet5(1:84,:));%fp=fp ;% tn=tn ;%
y(5,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet5(85:179,:));%fp=fp ;% tn=tn ;%
y(5,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet5(180:274,:));%fp=fp ;% tn=tn ;%
y(5,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet5(275:369,:));%fp=fp ;% tn=tn ;%
y(5,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet5(370:457,:));%fp=fp ;% tn=tn ;%
y(5,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet5(458:516,:));%fp=fp ;% tn=tn ;%
y(5,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet5(517:586,:));%fp=fp ;% tn=tn ;%
y(5,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet5(587:656,:));%fp=fp ;% tn=tn ;%
y(5,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet5(657:726,:));%fp=fp ;% tn=tn ;%
y(5,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet5(727:789,:));%fp=fp ;% tn=tn ;%

y(6,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet6(1:69,:));% fp=fp ;% tn=tn ;%
y(6,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet6(70:149,:));%fp=fp ;% tn=tn ;%
y(6,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet6(150:229,:));%fp=fp ;% tn=tn ;%
y(6,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet6(230:309,:));%fp=fp ;% tn=tn ;%
y(6,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet6(310:383,:));%fp=fp ;% tn=tn ;%
y(6,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet6(384:448,:));%fp=fp ;% tn=tn ;%
y(6,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet6(449:524,:));%fp=fp ;% tn=tn ;%
y(6,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet6(525:600,:));%fp=fp ;% tn=tn ;%
y(6,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet6(601:676,:));%fp=fp ;% tn=tn ;%
y(6,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet6(677:744,:));%fp=fp ;% tn=tn ;%

y(7,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet7(1:63,:));%fp=fp ;% tn=tn ;%
y(7,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet7(64:137,:));%fp=fp ;% tn=tn ;%
y(7,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet7(138:211,:));%fp=fp ;% tn=tn ;%
y(7,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet7(212:285,:));%fp=fp ;% tn=tn ;%
y(7,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet7(286:351,:));%fp=fp ;% tn=tn ;%
y(7,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet7(352:402,:));%fp=fp ;% tn=tn ;%
y(7,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet7(403:464,:));%fp=fp ;% tn=tn ;%
y(7,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet7(465:526,:));%fp=fp ;% tn=tn ;%
y(7,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet7(527:588,:));%fp=fp ;% tn=tn ;%
y(7,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet7(589:643,:));%fp=fp ;% tn=tn ;%

y(8,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet8(1:54,:));% fp=fp ;% tn=tn ;%
y(8,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet8(55:119,:));%fp=fp ;% tn=tn ;%
y(8,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet8(120:184,:));%fp=fp ;% tn=tn ;%
y(8,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet8(185:249,:));%fp=fp ;% tn=tn ;%
y(8,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet8(250:305,:));%fp=fp ;% tn=tn ;%
y(8,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet8(306:383,:));%fp=fp ;% tn=tn ;%
y(8,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet8(384:472,:));%fp=fp ;% tn=tn ;%
y(8,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet8(473:561,:));%fp=fp ;% tn=tn ;%
y(8,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet8(562:650,:));%fp=fp ;% tn=tn ;%
y(8,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet8(651:729,:));%fp=fp ;% tn=tn ;%

y(9,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet9(1:65,:));%fp=fp ;% tn=tn ;%
y(9,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet9(66:141,:));%fp=fp ;% tn=tn ;%
y(9,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet9(142:217,:));%fp=fp ;% tn=tn ;%
y(9,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet9(218:293,:));%fp=fp ;% tn=tn ;%
y(9,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet9(294:362,:));%fp=fp ;% tn=tn ;%
y(9,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet9(363:399,:));%fp=fp ;% tn=tn ;%
y(9,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet9(400:447,:));%fp=fp ;% tn=tn ;%
y(9,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet9(448:495,:));%fp=fp ;% tn=tn ;%
y(9,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet9(496:543,:));%fp=fp ;% tn=tn ;%
y(9,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet9(544:581,:));%fp=fp ;% tn=tn ;%

y(10,1) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet10(1:66,:));%fp=fp ;% tn=tn ;%
y(10,2) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet10(67:143,:));%fp=fp ;% tn=tn ;%
y(10,3) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet10(144:220,:));%fp=fp ;% tn=tn ;%
y(10,4) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet10(221:297,:));%fp=fp ;% tn=tn ;%
y(10,5) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet10(298:365,:));%fp=fp ;% tn=tn ;%
y(10,6) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet10(366:441,:));%fp=fp ;% tn=tn ;%
y(10,7) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet10(442:528,:));%fp=fp ;% tn=tn ;%
y(10,8) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet10(529:615,:));%fp=fp ;% tn=tn ;%
y(10,9) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet10(616:702,:));%fp=fp ;% tn=tn ;%
y(10,10) = binary_classifier(threshold,class,10,allomegas,allmeans,allcovs,teSet10(703:782,:));%fp=fp ;% tn=tn ;%
end

