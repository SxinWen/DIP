clc;clear
img=imread('image/IMG_3696.jpg');
img=imresize(img,0.1);

img1=imrotate(img,360-30,'nearest');
img2=imrotate(img,360-30,'bilinear');
img3=imrotate(img,360-30,'bicubic');
img_show=[img1 img2 img3];
figure(1);imshow(img_show);
text(20+size(img1,2)*0,100+size(img1,1)*0,'30業nearest','FontSize',14,'background','white');
text(20+size(img1,2)*1,100+size(img1,1)*0,'30業bilinear','FontSize',14,'background','white');
text(20+size(img1,2)*2,100+size(img1,1)*0,'30業bicubic','FontSize',14,'background','white');

img1=imrotate(img,360-45,'nearest');
img2=imrotate(img,360-45,'bilinear');
img3=imrotate(img,360-45,'bicubic');
img_show=[img1 img2 img3];
figure(2);imshow(img_show);
text(20+size(img1,2)*0,100+size(img1,1)*0,'45業nearest','FontSize',14,'background','white');
text(20+size(img1,2)*1,100+size(img1,1)*0,'45業bilinear','FontSize',14,'background','white');
text(20+size(img1,2)*2,100+size(img1,1)*0,'45業bicubic','FontSize',14,'background','white');
