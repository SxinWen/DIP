function new_img=maverfilt(varargin)

a =varargin{2};mn=varargin{1};
x=size(mn,1);y=size(mn,2);
img=zeros(size(a,1)+floor(x/2)*2,size(a,2)+floor(y/2)*2);
img(round(x/2):size(a,1)+round(x/2)-1,round(y/2):size(a,2)+round(y/2)-1)=a;

for i=round(x/2):size(a,1)+round(x/2)-1
    for j=round(y/2):size(a,2)+round(y/2)-1
        tmp(i,j)=0;
        for k=1:x
            for n=1:y
                 tmp(i,j)=tmp(i,j)+ img(i-round(x/2)+k,j-round(y/2)+n);
            end
        end
    end
end
tmp=tmp/(x*y);
new_img=tmp(round(x/2):size(a,1)+round(x/2)-1,round(y/2):size(a,2)+round(y/2)-1);
