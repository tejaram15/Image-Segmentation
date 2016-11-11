clc;
close all;
clear all;
%cuckoo optimisation
image =  imread('seg_1.jpg');
image = rgb2gray(image);

I = Thresholding2(image,100);

ele(1) = image(163,233);
ele(2) = image(163,234);
ele(3) = image(163,235);

ele(4) = image(164,233);
ele(5) = image(164,234);
ele(6) = image(164,235);

ele(7) = image(165,233);
ele(8) = image(165,234);
ele(9) = image(165,235);

T1 = Thresholding(image,ele(1));
T2 = Thresholding(image,ele(2));
T3 = Thresholding(image,ele(3));
T4 = Thresholding(image,ele(4));
T5 = Thresholding(image,ele(5));
T6 = Thresholding(image,ele(6));
T7 = Thresholding(image,ele(7));
T8 = Thresholding(image,ele(8));
T9 = Thresholding(image,ele(9));

%imshow(T1);
%imshow(T2);
%imshow(T3);
%imshow(T4);
%imshow(T5);
%imshow(T6);
%imshow(T7);
%imshow(T8);
%imshow(T9);

%imwrite(T1,'seg_2-ele1.jpg');
%imwrite(T2,'seg_2-ele2.jpg');
%imwrite(T3,'seg_2-ele3.jpg');
%imwrite(T4,'seg_2-ele4.jpg');
%imwrite(T5,'seg_2-ele5.jpg');
%imwrite(T6,'seg_2-ele6.jpg');
%imwrite(T7,'seg_2-ele7.jpg');
%imwrite(T8,'seg_2-ele8.jpg');
%imwrite(T9,'seg_2-ele9.jpg');


m(1) = mean(mean(T1));
m(2) = mean(mean(T2));
m(3) = mean(mean(T3));
m(4) = mean(mean(T4));
m(5) = mean(mean(T5));
m(6) = mean(mean(T6));
m(7) = mean(mean(T7));
m(8) = mean(mean(T8));
m(9) = mean(mean(T9));

[values, indices] = sort(m);

% and indices are 3 , 2 , 5 , 1 , 6 , 4 , 9 , 7 , 8
% Conclusion 3rd image is more clear than 1st Image than the 4th image than
% the 2nd image
