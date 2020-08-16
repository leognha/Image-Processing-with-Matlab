image = imread('blurry_moon.tif');
image2 = imread('skeleton_orig.bmp');

laplacian = Laplacian2(image);
laplacian2 = Laplacian2(image2);

us = unsharp_masking(image);
us2 = unsharp_masking(image2);

hb = high_boost_filtering(image);
hb2 = high_boost_filtering(image2);


%%Laplacian2_fr = Laplacian2_fr(image);


Laplacian2_fr =  hight_boot_g(image,1);
Laplacian2_fr2 = hight_boot_g(image2,1);


usfr = unsharpfr(image);
usfr2 = unsharpfr(image2);

hbgh =  hight_boot_g(image,5);
hbgh2 = hight_boot_g(image2,5);


%%
figure(1);
subplot(2,4,1);
imshow(image),title('Original');
subplot(2,4,2);
imshow(laplacian),title('Laplacian operator');
subplot(2,4,5);
imshow(us),title('Unsharp masking');
subplot(2,4,6);
imshow(hb),title('High-boost filtering');

subplot(2,4,3);
imshow(image),title('Original');

subplot(2,4,4);
imshow(Laplacian2_fr),title('Laplacian in frequency domain');

subplot(2,4,7);
imshow(usfr),title('Unmask in frequency domain');

subplot(2,4,8);
imshow(hbgh),title('High-boost filtering in frequency domain');

%%
figure(2);
subplot(2,4,1);
imshow(image2),title('Original');
subplot(2,4,2);
imshow(laplacian2),title('Laplacian operator');
subplot(2,4,5);
imshow(us2),title('Unsharp masking');
subplot(2,4,6);
imshow(hb2),title('High-boost filtering');

subplot(2,4,3);
imshow(image2),title('Original');

subplot(2,4,4);
imshow(Laplacian2_fr2),title('Laplacian in frequency domain');

subplot(2,4,7);
imshow(usfr2),title('Unmask in frequency domain');

subplot(2,4,8);
imshow(hbgh2),title('High-boost filtering in frequency domain');
