function LABImage = RGB_to_Lab(img)
[col,row,num] = size(img);

XYZImage = zeros(col,row,num);
filter = [0.412453 0.357580 0.180423;0.212671 0.715160 0.072169;0.019334 0.119193 0.950227];

L = zeros(col,row);
a = zeros(col,row);
b = zeros(col,row);
%«Ø¥ßimage¼È¦s
image(:,:,1) = double(img(:,:,1))/255;
image(:,:,2) = double(img(:,:,2))/255;
image(:,:,3) = double(img(:,:,3))/255;
    for x = 1:col
        for y = 1:row
            R = image(x,y,1);
            G = image(x,y,2);
            B = image(x,y,3);
            XYZImage(x,y,1) = filter(1,:)*[R G B]';
            XYZImage(x,y,2) = filter(2,:)*[R G B]';
            XYZImage(x,y,3) = filter(3,:)*[R G B]';
        end
    end
Xw = 0.9515;
Yw = 1;
Zw = 1.0886;
    for x = 1:col
        for y = 1:row
            X = double(XYZImage(x,y,1)); Y = double(XYZImage(x,y,2)); Z = double(XYZImage(x,y,3));
            qY = Y/Yw; qX = X/Xw; qZ = Z/Zw;
            if(qY > 0.008856)
                %L
                L(x,y) = 116*(qY^(1/3))-16;       
            else
                L(x,y) = 903.3*qY;
            end
            %a
            a(x,y) = 500*(fy(qX)-fy(qY));
            %b
            b(x,y) = 200*(fy(qY)-fy(qZ));  
        end
    end
    LABImage = cat(3, L, a, b);
end