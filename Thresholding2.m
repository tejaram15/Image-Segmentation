function zr = Thresholding2(I,val)
[r,c] = size(I);
zr = zeros(r,c);
for i = 1:r
    for j = 1:c
        if I(i,j)>val
            zr(i,j) = 1;
        end
    end
end
zr = bwareaopen(zr,5);
zr = imfill(zr,'holes');
end