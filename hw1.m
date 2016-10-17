clc;clear
img=rgb2gray(imread('image/IMG_3696.jpg'));
histimg=histeq(img,256);
add_img=img+histimg;
sub_img=-img+histimg;

img_show=[img histimg add_img sub_img];
figure(1);
imshow(img_show);
text(2+size(img,2)*0,100+size(img,1)*0,'原始图片','Color','red','FontSize',14,'background','white');
text(2+size(img,2)*1,100+size(img,1)*0,'均衡化后','Color','red','FontSize',14,'background','white');
text(2+size(img,2)*2,100+size(img,1)*0,'二者相加','Color','red','FontSize',14,'background','white');
text(2+size(img,2)*3,100+size(img,1)*0,'二者相减','Color','red','FontSize',14,'background','white');






















