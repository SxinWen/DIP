%  批量处理得到整个数据集的offset
% batch handle the full dataset to find offst

clc;clear
loadpath='image\实验三四\Microsoft Imagebase\';
format='*.jpg';
fullpath=strcat(loadpath,format);
files=dir(fullpath);


for i=1:length(files)
file=files(i).name;
img=imread(strcat(loadpath,file));
database(:,:,i)=hw4_getEHD(img);
end


save('database.mat','database');



