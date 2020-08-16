function [ RGB ] = HSI_to_RGB( HSI )
image = im2double(HSI);

col = size(image,1);
row = size(image,2);

H = image(:, :, 1);
S = image(:, :, 2);
I = image(:, :, 3);
%ªì©l¤Æ RGB
R = zeros(col, row);
G = zeros(col, row);
B = zeros(col, row);

for i=1:col
    for j=1:row
        %'RG';
        R(i,j) = I(i,j)*(1+(S(i,j)*cosd(H(i,j)))/cosd(60-H(i,j)));
        B(i,j) = I(i,j)*(1-S(i,j));
        G(i,j) = 3*I(i,j)-(R(i,j)+B(i,j));
        if( (R(i,j)==G(i,j))&&(G(i,j)==B(i,j)) )
            R(i,j) = I(i,j); G(i,j) = I(i,j); B(i,j) = I(i,j);
        end

        if (H(i,j)>=120)&&(H(i,j)<240)
        H(i,j) = H(i,j) - 120;
        %'GB';
        R(i,j) = I(i,j)*(1-S(i,j));
        G(i,j) = I(i,j)*(1+(S(i,j)*cosd(H(i,j)))/cosd(60-H(i,j)));
        B(i,j) = 3*I(i,j)-(R(i,j)+G(i,j));
        end

        if (H(i,j)>=240)&&(H(i,j)<=360)
        H(i,j) = H(i,j) - 240;
        %'BR';
        G(i,j) = I(i,j)*(1-S(i,j));
        B(i,j) = I(i,j)*(1+(S(i,j)*cosd(H(i,j)))/cosd(60-H(i,j)));
        R(i,j) = 3*I(i,j)-(G(i,j)+B(i,j));
        end
    end
end

RGB = cat(3, R, G, B);

end

