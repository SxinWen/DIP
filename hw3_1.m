clc;clear
img=imresize(imread('image\实验一二/IMG_3573.jpg'),0.1);
img=im2double(rgb2gray(img));
noise_img=imnoise(img,'gaussian',0.1);

% 均值滤波
cof1=fspecial('average',3);
img1=filter2(cof1,noise_img);
cof2=fspecial('average',5);
img2=filter2(cof2,noise_img);
cof3=fspecial('average',7);
img3=filter2(cof3,noise_img);

%中值滤波
img4=medfilt2(noise_img,[3 3]);
img5=medfilt2(noise_img,[5 5]);
img6=medfilt2(noise_img,[7 7]);

img_show=[img img1 img2 img3;noise_img img4 img5 img6];
figure(1);
imshow(img_show);
text(10+size(img,2)*0,10+size(img,1)*0,'原始图片','FontSize',12,'background','white');
text(10+size(img,2)*1,10+size(img,1)*0,'均值 窗口为3','FontSize',12,'background','white');
text(10+size(img,2)*2,10+size(img,1)*0,'均值 窗口为5','FontSize',12,'background','white');
text(10+size(img,2)*3,10+size(img,1)*0,'均值 窗口为7','FontSize',12,'background','white');

text(10+size(img,2)*0,10+size(img,1)*1,'加高斯噪声 0.1','FontSize',12,'background','white');
text(10+size(img,2)*1,10+size(img,1)*1,'中值 窗口为3','FontSize',12,'background','white');
text(10+size(img,2)*2,10+size(img,1)*1,'中值 窗口为5','FontSize',12,'background','white');
text(10+size(img,2)*3,10+size(img,1)*1,'中值 窗口为7','FontSize',12,'background','white');

