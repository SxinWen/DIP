% EHD描述子提取特征向量
clc;clear;
img=imread('image\实验三四\Microsoft Imagebase\60.jpg');

loadpath='\image\实验三四\Microsoft Imagebase\';
format='*.jpg';
fullpath=strcat(loadpath,format);
files=dir(fullpath);

load('database.mat');
sample=hw4_getEHD(img);

for i=1:size(database,3)
    tmp=(sample-database(:,:,i)).*(sample-database(:,:,i));
    similarity(i)=sum(sum(tmp));
end
[~, indices] = sort(similarity);
show_img=img;
[row col ~]=size(img);
for i=1:9
file=files(indices(i)).name;
img=imread(strcat(loadpath,file));
if size(img,3)==1
    img(:,:,2)=img(:,:,1);img(:,:,3)=img(:,:,1);
end
img=imresize(img,[row col]);
show_img=[show_img img];
end
imshow(show_img);
