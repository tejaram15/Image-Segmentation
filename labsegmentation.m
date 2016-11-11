A = imread('test.png');
cform = makecform('srgb2lab');
lab_A = applycform(A,cform);
%imshow(lab_A);
%title('lab image');
ab = double(lab_A(:,:,2:3));
nrows = size(ab,1);
ncols = size(ab,2);
ab = reshape(ab,nrows*ncols,2);
ncolors = 6;
[cluster_idx,cluster_centre] = kmeans(ab,ncolors,'distance','sqEuclidean', ...
                                        'Replicates',3);
pixel_lables = reshape(cluster_idx,nrows,ncols);
seg_img = cell(1,3);
rgb_label = repmat(pixel_lables,[1 1 3]);
for k = 1:ncolors
    color = A;
    color(rgb_label ~=k ) = 0;
    seg_img{k} = color;
end
imwrite(seg_img{1},'seg_1.jpg');
imwrite(seg_img{2},'seg_2.jpg');
imwrite(seg_img{3},'seg_3.jpg');
%imshow(seg_img{1}), title('objects in cluster 1');
%imshow(seg_img{2}), title('objects in cluster 2');
%imshow(seg_img{3}), title('objects in cluster 3');