clc;
close all;
clear all;
%cuckoo optimisation
image =  imread('seg_3.jpg');
image = rgb2gray(image);

I = Thresholding(image,100);

ele(1) = image(160,237);
ele(2) = image(160,238);
ele(3) = image(161,237);
ele(4) = image(161,238);

T1 = Thresholding(image,ele(1));
T2 = Thresholding(image,ele(2));
T3 = Thresholding(image,ele(3));
T4 = Thresholding(image,ele(4));

%imwrite(T1,'seg_3-ele1.jpg');
%imwrite(T2,'seg_3-ele2.jpg');
%imwrite(T3,'seg_3-ele3.jpg');
%imwrite(T4,'seg_3-ele4.jpg');

m(1) = mean(mean(T1));
m(2) = mean(mean(T2));
m(3) = mean(mean(T3));
m(4) = mean(mean(T4));

[values, indices] = sort(m);

%%mean values for the segmented image (After sorting)
%m1 = 0.1774
%m2 = 0.2178
%m3 = 0.2658
%m4 = 0.2841
% and indices are 3 , 1 , 4 , 2
% Conclusion 3rd image is more clear than 1st Image than the 4th image than
% the 2nd image
