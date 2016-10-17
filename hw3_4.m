clc;clear;
img=imresize(imread('image\icon.jpg'),1);
img=im2double((img));

fft_img=fftshift(fft2(img));
angle_img=360*angle(fft_img)/pi;
map_img=abs(fft_img);

ifft_angle=ifft2(ifftshift(angle_img));
ifft_map=ifft2(ifftshift(map_img));

img_show=[img (map_img)/100 mat2gray(angle_img);img ifft_map abs(ifft_angle)];
imshow(img_show);
text(10+size(img,2)*0,10+size(img,1)*0,'ԭʼͼƬ','FontSize',10,'background','white');
text(10+size(img,2)*1,10+size(img,1)*0,'Ƶ�����ͼ��','FontSize',10,'background','white');
text(10+size(img,2)*2,10+size(img,1)*0,'Ƶ����λͼ��','FontSize',10,'background','white');
text(10+size(img,2)*0,10+size(img,1)*1,'ԭʼͼƬ','FontSize',10,'background','white');
text(10+size(img,2)*1,10+size(img,1)*1,'�����IFFTͼ��','FontSize',10,'background','white');
text(10+size(img,2)*2,10+size(img,1)*1,'��λ��IFFTͼ��','FontSize',10,'background','white');


%http://blog.csdn.net/abcjennifer/article/details/7622228