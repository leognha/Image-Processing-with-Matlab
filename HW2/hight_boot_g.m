function res = hight_boot_g(image,A)
image = image(:,:,1);
cim=image;


%2D fft
fim=fft2(cim);

thresh=10; % cutoff radius in frequency domain for filters

him=hbb(fim,thresh,A);  % using butterworth high pass filter

%inverse 2D fft
 ifim=ifft2(him);
 

% retaining the ral parts of the matrix
rim=real(ifim);
res=uint8(rim);
end