function [output] = unsharp_masking(image)
image = image(:,:,1);
gaussin = fspecial('gaussian',5,3);
low_pass = imfilter(image, gaussin);
k = image - low_pass;
output = image + k;
end