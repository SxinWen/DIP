function dire=hw4_getEHD(img)
% EHD描述子提取特征向量
% clc;clear;
% img=rgb2gray(im2double(imread('A:\working\digital image handle\image\实验三四\Microsoft Imagebase\1.jpg')));
img=(im2double(img));
if size(img,3)==3
    img=rgb2gray(img);
end
%% 步骤1 将图像分为4*4=16个子图
[row col]=size(img);
sub_row=round(row/4);
sub_col=round(col/4);
img=imresize(img,[sub_row*4 sub_col*4]);
for i=0:3
    for j=0:3
        sub_graph(:,:,i*4+j+1) = img(1+sub_row*i:sub_row*(i+1),1+sub_col*j:sub_col*(j+1));
    end
end

%% 步骤2 将每个子图分成不重叠的2*2的小块。将每个小块的灰度值计为a1, a2, a3, a4
cnt_row=4;cnt_col=4;
subsub_row=floor(sub_row/cnt_row);
subsub_col=floor(sub_col/cnt_col);
for k=1:16
    for i=0:3
        for j=0:3
            subsub_graph(:,:,i*4+j+1,k) = sub_graph(1+subsub_row*i:subsub_row*(i+1),1+subsub_col*j:subsub_col*(j+1),k);
        end
    end
end
ave_gray=reshape(mean(mean(subsub_graph)),16,[]);


%% 步骤3 对于五个方向边缘，定义五种边缘信息
filt=[1 -1 1 -1;1 1 -1 -1;2^(1/2), 0, 0, -2^(1/2);0,2^(1/2)  , -2^(1/2) , 0;2, -2, -2, 2];

thre=0.2;
%% 步骤4 计算每个小块的每个方向的幅值，其中f分别对应上述五个方向

for j=1:16
    tmp(:,1)=[ave_gray(1,j) ave_gray(2,j) ave_gray(5,j) ave_gray(6,j)]';    
    tmp(:,2)=[ave_gray(3,j) ave_gray(4,j) ave_gray(7,j) ave_gray(8,j)]';    
    tmp(:,3)=[ave_gray(1+8,j) ave_gray(2+8,j) ave_gray(5+8,j) ave_gray(6+8,j)]';    
    tmp(:,4)=[ave_gray(3+8,j) ave_gray(4+8,j) ave_gray(7+8,j) ave_gray(8+8,j)]';
    mult_sum=filt*tmp;
    mult_sum(mult_sum>thre)=1;mult_sum(mult_sum<=thre)=0;
    dire(j,:)=sum(mult_sum');
end
% msort=sum(dire');
% [~, indices] = sort(msort);
% 
% for j=1:16    
% descriptor(j,:)=dire(indices(j),:);
% end





