function [ s ] = PL( image,c,gamma )

image = im2double(image);
s = (c*image).^gamma;

end
