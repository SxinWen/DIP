clc;clear
img=rgb2gray(imresize(imread('image\实验一二/IMG_4441.jpg'),0.25));
img=im2double(img);

cof1=[1 2 1;2 -12 2;1 2 1];
img1=filter2(cof1,img);
cof2=[1 1 1;1 -8 1;1 1 1];
img2=filter2(cof2,img);

img_show=[img img1 img2];
imshow(img_show);
text(20+size(img,2)*0,20+size(img,1)*0,'原始图片','FontSize',14,'background','white');
text(20+size(img,2)*1,20+size(img,1)*0,'模板[1 2 1;2 -12 2;1 2 1]','FontSize',14,'background','white');
text(20+size(img,2)*2,20+size(img,1)*0,'模板[1 1 1;1 -8 1;1 1 1]','FontSize',14,'background','white');
