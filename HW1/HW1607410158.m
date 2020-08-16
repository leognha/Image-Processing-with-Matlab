%input images
picture1 = imread('Lena.bmp');
picture2 = imread('Peppers.bmp');
picture3 = imread('Cameraman.bmp');

%Power_law_transformation
power1 =Power_law_function(picture1);
power2 =Power_law_function(picture2);
power3 =Power_law_function(picture3);

%Hist_equalization
hist1 =hist_equalization(picture1);
hist2 =hist_equalization(picture2);
hist3 = hist_equalization(picture3);

%Laplacian
lap1 = Laplacian(picture1);
lap2 = Laplacian(picture2);
lap3 = Laplacian(picture3);

% result
figure(1); %Lena
subplot(2,4,1);imshow(picture1);title('original');
subplot(2,4,2);imshow(power1);title('Power law transformation');
subplot(2,4,3);imshow(hist1);title('histogram equalization');
subplot(2,4,4);imshow(lap1);title('Laplacian');
subplot(2,4,5);imhist(picture1);
subplot(2,4,6);imhist(power1);
subplot(2,4,7);imhist(hist1);
subplot(2,4,8);imhist(lap1);

figure(2); %Peppers
subplot(2,4,1);imshow(picture2);title('original');
subplot(2,4,2);imshow(power2);title('Power law transformation');
subplot(2,4,3);imshow(hist2);title('histogram equalization');
subplot(2,4,4);imshow(lap2);title('Laplacian');
subplot(2,4,5);imhist(picture2);
subplot(2,4,6);imhist(power2);
subplot(2,4,7);imhist(hist2);
subplot(2,4,8);imhist(lap2);

figure(3); %Cameraman
subplot(2,4,1);imshow(picture3);title('original');
subplot(2,4,2);imshow(power3);title('Power law transformation');
subplot(2,4,3);imshow(hist3);title('histogram equalization');
subplot(2,4,4);imshow(lap3);title('Laplacian');
subplot(2,4,5);imhist(picture3);
subplot(2,4,6);imhist(power3);
subplot(2,4,7);imhist(hist3);
subplot(2,4,8);imhist(lap3);
