function [ image ] = filter( img,matrix )
  [rows,cols] = size(img);
  [mask_size,mask_size1] = size(matrix);
  new_img = zeros(rows+mask_size-1,cols+mask_size-1);
  new_img = cast(new_img, class(img));

  if(mask_size == 3)
  new_img(2:end-1,2:end-1) = img;
  image = zeros(size(new_img));
  image = cast(image, class(img));
  for i=2:1:rows+1 
    for j=2:1:cols+1 
      value=0;
      for g=-1:1:1
        for l=-1:1:1
          value=value+new_img(i+g,j+l)*matrix(g+2,l+2); 
        end
      end
     image(i,j)=value;
    end
  end
image = image(2:end-1,2:end-1);
  else if(mask_size == 5)
   new_img(3:end-2,3:end-2) = img;
  image = zeros(size(new_img));
  image = cast(image, class(img));
   for i=3:1:rows 
    for j=3:1:cols 
      value=0;
      for g=-2:1:2
        for l=-2:1:2
          value = value + new_img(i+g,j+l)*matrix(g+3,l+3); 
        end
      end
     image(i,j)=value;
    end
end
  end
  end
end