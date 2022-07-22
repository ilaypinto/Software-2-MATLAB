A1=[];
a=[1:100];
A1=[repmat(a,100,1)];
for (i=1:100)
    for (j=1:100)
        if (i==j)
            A1(i,j)=0;
        elseif (i<j)
            A1(i,j)=-A1(i,j);
        end
    end
end
A2=A1;
A2(5:10,:)=zeros(6,100);
A3=A1;
a=A1(:,30);
b=A1(:,70);
A3(:,30)=b;
A3(:,70)=a;
