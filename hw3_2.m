clc;clear;dbstop if error
img=imresize(imread('image\ʵ��һ��/IMG_3573.jpg'),0.1);
img=im2double(rgb2gray(img));
noise_img=imnoise(img,'gaussian',0.1);
% img=[8 6 13 9;1 13 1 15;5 4 7 7;5 10 3 7];


% ��ֵ�˲�
cof1=fspecial('average',3);
img1=maverfilt(cof1,noise_img);
cof2=fspecial('average',5);
img2=maverfilt(cof2,noise_img);
cof3=fspecial('average',7);
img3=maverfilt(cof3,noise_img);

%��ֵ�˲�
img4=mmediafilt(noise_img,[3 3]);
img5=mmediafilt(noise_img,[5 5]);
img6=mmediafilt(noise_img,[7 7]);

img_show=[img img1 img2 img3;noise_img img4 img5 img6];
figure(1);
imshow(img_show);
text(10+size(img,2)*0,10+size(img,1)*0,'ԭʼͼƬ','FontSize',12,'background','white');
text(10+size(img,2)*1,10+size(img,1)*0,'��ֵ ����Ϊ3','FontSize',12,'background','white');
text(10+size(img,2)*2,10+size(img,1)*0,'��ֵ ����Ϊ5','FontSize',12,'background','white');
text(10+size(img,2)*3,10+size(img,1)*0,'��ֵ ����Ϊ7','FontSize',12,'background','white');

text(10+size(img,2)*0,10+size(img,1)*1,'�Ӹ�˹���� 0.1','FontSize',12,'background','white');
text(10+size(img,2)*1,10+size(img,1)*1,'��ֵ ����Ϊ3','FontSize',12,'background','white');
text(10+size(img,2)*2,10+size(img,1)*1,'��ֵ ����Ϊ5','FontSize',12,'background','white');
text(10+size(img,2)*3,10+size(img,1)*1,'��ֵ ����Ϊ7','FontSize',12,'background','white');

%�ο� http://blog.csdn.net/zouxy09/article/details/49080029