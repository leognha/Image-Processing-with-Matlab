function function3 = Laplacian(img)
%%
mask = [0 -1 0; -1 4 -1; 0 -1 0];
result = uint8(filter2(mask, img, 'same'));
function3 = imsubtract(img, result);
end