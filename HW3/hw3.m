%% Image 1
image = imread('aloe.jpg');
image = im2double(image);
%RGB
RGBimage(:, :, 1) = PL(image(:, :, 1),1,0.6);
RGBimage(:, :, 2) = PL(image(:, :, 2),1,0.6);
RGBimage(:, :, 3) = PL(image(:, :, 3),1,0.6);
%HSI
HSI = RGB_to_HSI(image);
HSI(:, :, 2) = PL(HSI(:, :, 2),1,0.6);
HSI(:, :, 3) = PL(HSI(:, :,3),1,0.6);
HSIimage = HSI_to_RGB(HSI);

%L*A*B*
LAB = RGB_to_Lab(image);
LAB(:, :, 1) = PL(LAB(:,: , 1),1,0.6);
LAB(:, :, 2) = PL(LAB(:,: , 2),1,0.6);
LAB(:, :, 3) = PL(LAB(:, :, 3),1,0.6);
LABimage = Lab_to_RGB(LAB);
LABimage = uint8(LABimage*255);

figure(1);
subplot(2,2,1);imshow(image);title('Original image');
subplot(2,2,2);imshow(RGBimage);title('RGB (gamma = 0.6¡B0.6¡B0.6)');
subplot(2,2,3);imshow(HSIimage);title('HSI (gamma = 0.6¡B0.6)');
subplot(2,2,4);imshow(LABimage);title('L*a*b (gamma = 0.6¡B0.6¡B0.6)');

%% image 2
image2 = imread('church.jpg');
image2 = im2double(image2);
%RGB
RGBimage2(:, :, 1) = PL(image2(:, :, 1),1,0.5);
RGBimage2(:, :, 2) = PL(image2(:, :, 2),1,0.5);
RGBimage2(:, :, 3) = PL(image2(:, :, 3),1,0.5);
 
HSI2 = RGB_to_HSI(image2);
HSI2(:, :, 2) = PL(HSI2(:, :, 2),1,0.7);
HSI2(:, :, 3) = PL(HSI2(:, :, 3),1,0.7);
HSIimage2 = HSI_to_RGB(HSI2);
%HSI
LAB2 = RGB_to_Lab(image2);
LAB2(:, :, 1) = PL(LAB2(:,: , 1),1,0.9);
LAB2(:, :, 2) = PL(LAB2(:,: , 2),1,1);
LAB2(:, :, 3) = PL(LAB2(:, :, 3),1,1);
LABimage2 = Lab_to_RGB(LAB2);
LABimage2 = uint8(LABimage2*255); 

figure(2);
subplot(2,2,1);imshow(image2);title('Original image');
subplot(2,2,2);imshow(RGBimage2);title('RGB (gamma = 0.5¡B0.5¡B0.5)');
subplot(2,2,3);imshow(HSIimage2);title('HSI (gamma = 0.7¡B0.7)');
subplot(2,2,4);imshow(LABimage2);title('L*a*b (gamma = 0.9¡B1.1¡B1.1)');

%% image 3
image3 = imread('house.jpg');
image3 = im2double(image3);
%RGB 
RGBimage3(:, :, 1) = PL(image3(:, :, 1),1,2);
RGBimage3(:, :, 2) = PL(image3(:, :, 2),1,2);
RGBimage3(:, :, 3) = PL(image3(:, :, 3),1,2);
%HSI 
HSI3 = RGB_to_HSI(image3);
HSI3(:, :, 2) = PL(HSI3(:, :, 2),1,2);
HSI3(:, :, 3) = PL(HSI3(:, :, 3),1,2);
HSIimage3 = HSI_to_RGB(HSI3);
%L*A*B*
LAB3 = RGB_to_Lab(image3);
LAB3(:, :, 1) = PL(LAB3(:,: , 1),1,2);
LAB3(:, :, 2) = PL(LAB3(:,: , 2),1,2);
LAB3(:, :, 3) = PL(LAB3(:, :, 3),1,2);
LABimage3 = Lab_to_RGB(LAB3);
LABimage3 = uint8(LABimage3*255);
 
figure(3);
subplot(2,2,1);imshow(image3);title('Original image');
subplot(2,2,2);imshow(RGBimage3);title('RGB (gamma = 1.2¡B1.2¡B1.2)');
subplot(2,2,3);imshow(HSIimage3);title('HSI (gamma = 1.2¡B1.2)');
subplot(2,2,4);imshow(LABimage3);title('L*a*b (gamma = 1.2¡B1.2¡B1.2)');
 
%% image 4
image4 = imread('kitchen.jpg');
image4 = im2double(image4);
%RGB 
RGBimage4(:, :, 1) = PL(image4(:, :, 1),1, 1.2);
RGBimage4(:, :, 2) = PL(image4(:, :, 2),1, 1.2);
RGBimage4(:, :, 3) = PL(image4(:, :, 3),1, 1.2);
%HSI 
HSI4 = RGB_to_HSI(image4);
HSI4(:, :, 2) = PL(HSI4(:, :, 2),1, 1.2);
HSI4(:, :, 3) = PL(HSI4(:, :, 3),1, 1.2);
HSIimage4 = HSI_to_RGB(HSI4);
%L*A*B*
LAB4=RGB_to_Lab(image4);
LAB4(:, :, 1) = PL(LAB4(:,: , 1), 1,2);
LAB4(:, :, 2) = PL(LAB4(:,: , 2),1, 1.2);
LAB4(:, :, 3) = PL(LAB4(:, :, 3),1, 1.2);
LABimage4 = Lab_to_RGB(LAB4);
LABimage4 = uint8(LABimage4*255);

figure(4);
subplot(2,2,1);imshow(image4);title('Original image');
subplot(2,2,2);imshow(RGBimage4);title('RGB (gamma = 1.2¡B1.2¡B1.2)');
subplot(2,2,3);imshow(HSIimage4);title('HSI (gamma = 1.2¡B1.2)');
subplot(2,2,4);imshow(LABimage4);title('L*a*b (gamma = 1.2¡B1.2¡B1.2)');
