function function1 = Power_law_function(img)

imd = double(img);
gamma =2;
[m,n] = size(imd);
%%
for i=1:m
    for j=1:n
        result(i,j)=abs(1*imd(i,j)/255).^gamma*255;
    end
end

function1 = uint8(result);
end