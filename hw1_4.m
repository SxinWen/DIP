clc;clear
img=imread('image/IMG_3696.jpg');
img=imresize(img,0.1);

img1=imresize(img,1.5,'nearest');
img2=imresize(img,1.5,'bilinear');
img3=imresize(img,1.5,'bicubic');
img_show=[img1 img2 img3];
figure(1);imshow(img_show);
text(2+size(img1,2)*0,15+size(img1,1)*0,'1.5±¶nearest','FontSize',14,'background','white');
text(2+size(img1,2)*1,15+size(img1,1)*0,'1.5±¶bilinear','FontSize',14,'background','white');
text(2+size(img1,2)*2,15+size(img1,1)*0,'1.5±¶bicubic','FontSize',14,'background','white');
 
img1=imresize(img,0.8,'nearest');
img2=imresize(img,0.8,'bilinear');
img3=imresize(img,0.8,'bicubic');
img_show=[img1 img2 img3];
figure(2);imshow(img_show);
text(2+size(img1,2)*0,10+size(img1,1)*0,'0.8±¶nearest','FontSize',14,'background','white');
text(2+size(img1,2)*1,10+size(img1,1)*0,'0.8±¶bilinear','FontSize',14,'background','white');
text(2+size(img1,2)*2,10+size(img1,1)*0,'0.8±¶bicubic','FontSize',14,'background','white');

img1=imresize(img,0.5,'nearest');
img2=imresize(img,0.5,'bilinear');
img3=imresize(img,0.5,'bicubic');
img_show=[img1 img2 img3];
figure(3);imshow(img_show);
text(2+size(img1,2)*0,10+size(img1,1)*0,'0.5±¶nearest','FontSize',14,'background','white');
text(2+size(img1,2)*1,10+size(img1,1)*0,'0.5±¶bilinear','FontSize',14,'background','white');
text(2+size(img1,2)*2,10+size(img1,1)*0,'0.5±¶bicubic','FontSize',14,'background','white');
