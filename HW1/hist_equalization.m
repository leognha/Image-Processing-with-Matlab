function function2 = hist_equalization(img)
[row, col]=size(img);
result = zero_matrix(row,col);
probability = zero_matrix(256,1);
%%
for i=1:row         
    for j=1:col
       probability(img(i,j)+1) = probability(img(i,j)+1)+1; 
    end
end
%%
for i=1:256         
    probability(i) = (probability(i)/(row*col))*255;
end
%%
for i=2:256    
    probability(i) = probability(i-1)+probability(i);
end
%%
for i=1:row        
    for j=1:col
        result(i,j) = probability(img(i,j)+1);   
    end
end
function2 = uint8(result);
end

