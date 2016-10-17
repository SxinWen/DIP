clc;clear
img=imread('image/IMG_3696.jpg');

D1=img+50;
D2=1.5*img;
D3=0.8*img;
D4=255-img;
D5=img+0.8*img.*(255-img)./255;

all=[img D1 D2; D3 D4 D5];
imshow(all);
text(20+size(img,2)*0,100+size(img,1)*0,'ԭʼͼƬI','Color','red','FontSize',14,'background','white');
text(20+size(img,2)*1,100+size(img,1)*0,'I+50','Color','red','FontSize',14,'background','white');
text(20+size(img,2)*2,100+size(img,1)*0,'1.5*I','Color','red','FontSize',14,'background','white');
text(20+size(img,2)*0,100+size(img,1)*1,'0.8*I','Color','red','FontSize',14,'background','white');
text(20+size(img,2)*1,100+size(img,1)*1,'255-I','Color','red','FontSize',14,'background','white');
text(20+size(img,2)*2,100+size(img,1)*1,'I+0.8*I*(255-I)/255','Color','red','FontSize',14,'background','white');

