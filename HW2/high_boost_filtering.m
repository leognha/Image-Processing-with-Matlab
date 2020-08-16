function output = high_boost_filtering(image)
image = image(:,:,1);
[x,y] = size(image);
m = zeros(x,y,'uint8');

US = unsharp_masking(image);
[k,s] = size(US);

A = 1.5;
for i=1:k
    for j=1:s
       m(i,j) = (A - 1) * image(i,j) + US(i,j);      
    end
end
     output = m;
end


