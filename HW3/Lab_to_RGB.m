function RGBImage = Lab_to_RGB(Lab)
    [col,row,num] = size(Lab);
    newLab = im2double(Lab);
    L = newLab(:,:,1); a = newLab(:,:,2); b = newLab(:,:,3);
    K = 903.3;
    Xw = 0.9515;
    Yw = 1;
    Zw = 1.0886;
    
    %% Lab to XYZ
    for x = 1:col
        for y = 1:row
            fy = (L(x,y)+16)/116;
            fx = fy + a(x,y)/500;
            fz = fy-b(x,y)/200;
        if(L(x,y) > K*0.008856)
                Y(x,y) = Yw*((L(x,y)+16)/116)^3;
            else
                Y(x,y) = Yw*L(x,y)/K;
        end
            
        if((fx^3)>0.008856)
                X(x,y) = Xw*fx^3;
            else
                X(x,y) = Xw*(116*fx-16)/K;
        end
            
        if((fz^3)>0.008856)
                Z(x,y) = Zw*fz^3;
            else
                Z(x,y) = Zw*(116*fz-16)/K;
        end
        end
    end
    XYZImage = cat(3,X,Y,Z);
 %% XYZ to RGB
 filter = [ 3.240479 -1.537150 -0.498535;-0.969256  1.875992  0.041556; 0.055648 -0.204043  1.057311];
     for x = 1:col
        for y = 1:row
            X = XYZImage(x,y,1);
            Y = XYZImage(x,y,2);
            Z = XYZImage(x,y,3);
            RGBImage(x,y,1) = filter(1,:)*[X Y Z]'*255;
            RGBImage(x,y,2) = filter(2,:)*[X Y Z]'*255;
            RGBImage(x,y,3) = filter(3,:)*[X Y Z]'*255;
        end
    end
end