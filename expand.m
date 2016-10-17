% EHD描述子提取特征向量
clc;clear;
img=im2double(imread('image\实验三四\Microsoft Imagebase\60.jpg'));
raw=im2uint8(img);
if size(img,3)==3
    img=rgb2gray(img);
end

loadpath='image\实验三四\Microsoft Imagebase\';
format='*.jpg';
fullpath=strcat(loadpath,format);
files=dir(fullpath);

load('surf_database.mat');
points=detectSURFFeatures(img);
[sample_descriptor,vpts1] = extractFeatures(img,points);

for i=1:size(database,2)
    database_descriptor=database{i};
    indexPairs = matchFeatures(sample_descriptor,database_descriptor) ;
    
    similarity(i)=size(indexPairs,1);
end

[~, indices] = sort(similarity);
show_img=raw;
[row col ~]=size(img);
for i=size(indices,2):-1:size(indices,2)-8
file=files(indices(i)).name;
img=imread(strcat(loadpath,file));
if size(img,3)==1
    img(:,:,2)=img(:,:,1);img(:,:,3)=img(:,:,1);
end
img=imresize(img,[row col]);
show_img=[show_img img];
end
imshow(show_img);





