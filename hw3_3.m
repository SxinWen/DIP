clc;clear
img=imresize(imread('image\实验一二/IMG_3573.jpg'),0.25);
img=im2double(rgb2gray(img));

fft_img=fftshift(fft2(img));
amp_img=abs(fft_img)/100;
ifft_img=ifft2(ifftshift(fft_img));

img_show=[img amp_img ifft_img];
imshow(img_show);
text(10+size(img,2)*0,10+size(img,1)*0,'原始图片','FontSize',12,'background','white');
text(10+size(img,2)*1,10+size(img,1)*0,'频域振幅图像','FontSize',12,'background','white');
text(10+size(img,2)*2,10+size(img,1)*0,'IFFT图像','FontSize',12,'background','white');
