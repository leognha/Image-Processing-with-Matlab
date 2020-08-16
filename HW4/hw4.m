%%sobel mask

sobel0 = [-1 -2 -1;0 0 0;1 2 1];
sobel90 = [-1 0 1;-2 0 2;-1 0 1];

%sobel = [0 1 2;-1 0 1;-2 1 0];
%sobel = [-2 -1 0;-1 0 1;0 -1 -2];

%%LOG
LOG_mask=[0 0 -1 0 0;0 -1 -2 -1 0;-1 -2 16 -2 -1;0 -1 -2 -1 0;0 0 -1 0 0];
%%
% image1
image1 = imread('image1.jpg');
image1 = im2double(image1);
Sobel0_image1 = filter(image1,sobel0);
Sobel90_image1 = filter(image1,sobel90);
LOG_image1 = filter(image1,LOG_mask);

figure(1);
subplot(2,3,1);imshow(image1);title('Original');
subplot(2,3,2);imshow(Sobel0_image1);title('Sobel,0');
subplot(2,3,3);imshow(Sobel90_image1);title('Sobel,90');
subplot(2,3,4);imshow(LOG_image1 );title('LOG');
%%
%image2
image2 = imread('image2.jpg');
image2 = im2double(image2);
Sobel0_image2 = filter(image2,sobel0);
Sobel90_image2 = filter(image2,sobel90);
LOG_image2 = filter(image2,LOG_mask);

figure(2);
subplot(2,3,1);imshow(image2);title('Original');
subplot(2,3,2);imshow(Sobel0_image2);title('Sobel,0');
subplot(2,3,3);imshow(Sobel90_image2);title('Sobel,90');
subplot(2,3,4);imshow(LOG_image2 );title('LOG');
%%
%image3
image3 = imread('image3.jpg');
image3 = im2double(image3);
Sobel0_image3 = filter(image3,sobel0);
Sobel90_image3 = filter(image3,sobel90);
LOG_image3 = filter(image3,LOG_mask);

figure(3);
subplot(2,3,1);imshow(image3);title('Original');
subplot(2,3,2);imshow(Sobel0_image3);title('Sobel,0');
subplot(2,3,3);imshow(Sobel90_image3);title('Sobel,90');
subplot(2,3,4);imshow(LOG_image3 );title('LOG');


