function new_img=mmediafilt(varargin)


a =varargin{1};mn=varargin{2};
x=mn(1);y=mn(2);
img=zeros(size(a,1)+floor(x/2)*2,size(a,2)+floor(y/2)*2);
img(round(x/2):size(a,1)+round(x/2)-1,round(y/2):size(a,2)+round(y/2)-1)=a;

for i=1:size(a,1)
    for j=1:size(a,2)
        tmp=img(i:i+x-1,j:j+y-1);
        tmp2=reshape(tmp,size(tmp,1)*size(tmp,2),1);
        s=sort(tmp2);
        new_img(i,j)=s(floor(size(tmp2,1)/2));
    end
end

% new_img=tmp(round(x/2):size(a,1)+round(x/2)-1,round(y/2):size(a,2)+round(y/2)-1);









