clc;clear
loadpath='image\实验三四\Microsoft Imagebase\';
format='*.jpg';
fullpath=strcat(loadpath,format);
files=dir(fullpath);

for i=1:length(files)
file=files(i).name;
img=im2double(imread(strcat(loadpath,file)));
if size(img,3)==3
    img=rgb2gray(img);
end
points=detectSURFFeatures(img);
[descriptor,vpts1] = extractFeatures(img,points);
database{i}=descriptor;
end


save('surf_database.mat','database');












