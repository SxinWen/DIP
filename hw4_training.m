%  ��������õ��������ݼ���offset
% batch handle the full dataset to find offst

clc;clear
loadpath='image\ʵ������\Microsoft Imagebase\';
format='*.jpg';
fullpath=strcat(loadpath,format);
files=dir(fullpath);


for i=1:length(files)
file=files(i).name;
img=imread(strcat(loadpath,file));
database(:,:,i)=hw4_getEHD(img);
end


save('database.mat','database');



