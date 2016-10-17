
clc;clear
img=rgb2gray(imresize(imread('image\实验一二/IMG_4441.jpg'),0.25));
img=im2double(img);
img1=edge(img,'roberts');
img2=edge(img,'sobel');
img3=edge(img,'prewitt');
img4=edge(img,'canny');
img5=edge(img,'log');

img_show=[img img1 img2;img3 img4 img5];
imshow(img_show);
text(20+size(img,2)*0,20+size(img,1)*0,'原始图片','FontSize',14,'background','white');
text(20+size(img,2)*1,20+size(img,1)*0,'roberts','FontSize',14,'background','white');
text(20+size(img,2)*2,20+size(img,1)*0,'sobel','FontSize',14,'background','white');
text(20+size(img,2)*0,20+size(img,1)*1,'prewitt','FontSize',14,'background','white');
text(20+size(img,2)*1,20+size(img,1)*1,'canny','FontSize',14,'background','white');
text(20+size(img,2)*2,20+size(img,1)*1,'log','FontSize',14,'background','white');

img6=edge(img,'sobel','horizontal');
img7=edge(img,'sobel','vertical');
img8=edge(img,'sobel','both');
img_dire=[img img6 img7 img8];
figure;imshow(img_dire);
text(20+size(img,2)*0,20+size(img,1)*0,'原始图片','FontSize',14,'background','white');
text(20+size(img,2)*1,20+size(img,1)*0,'水平','FontSize',14,'background','white');
text(20+size(img,2)*2,20+size(img,1)*0,'垂直','FontSize',14,'background','white');
text(20+size(img,2)*3,20+size(img,1)*0,'水平和垂直','FontSize',14,'background','white');
