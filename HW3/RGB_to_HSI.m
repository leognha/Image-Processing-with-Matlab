function [ HSI ] = RGB_to_HSI( RGB )
image = im2double(RGB);

col = size(image,1);
row = size(image,2);
%get RGB
R = image(:, :, 1);
G = image(:, :, 2);
B = image(:, :, 3);
%initilize HSI
H = zeros(col, row);
S = zeros(col, row);
I = zeros(col, row);

for i=1:col
    for j=1:row
        I(i,j) = ( R(i,j)+G(i,j)+B(i,j) )/3;

if( (R(i,j)==G(i,j))&&(G(i,j)==B(i,j)) )
    S(i,j) = 0;
else
    S(i,j) = 1-(3/(R(i,j)+G(i,j)+B(i,j))*min([R(i,j),G(i,j),B(i,j)]) );
end

if( (R(i,j)==G(i,j))&&(G(i,j)==B(i,j)) )
    Theta = 90;
else    
    Theta = abs(acosd( (R(i,j)-(G(i,j)/2)-(B(i,j)/2))/sqrt((R(i,j)-G(i,j))^2+(R(i,j)-B(i,j))*(G(i,j)-B(i,j)))));
end

if( B(i,j)<=G(i,j) )
    H(i,j) = Theta;
else
    H(i,j) = 360-Theta;
end

    end
end

HSI = cat(3, H, S, I);

end

