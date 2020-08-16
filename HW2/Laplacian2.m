function  [output]  = Laplacian2(image)
image=image(:,:,1);
[x,y]=size(image);
new=zeros(x,y,'uint8');

test=zeros(x + 2,y + 2,'uint8');
[trow,tcol]=size(test);
test(2:trow-1,2:tcol-1) = image(:,:);
%mask = [0 -1 0; -1 4 -1; 0 -1 0];
for i = 2:trow-1
    for j = 2:tcol-1
        new(i,j) = 4*test(i,j) - (test(i+1,j) + test(i-1,j) + test(i,j+1) + test(i,j-1));
    end
end
    output= image+(image + new(2:trow - 1,2:tcol - 1));
end

