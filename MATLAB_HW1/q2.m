B1=zeros(10,10);
for i=1:10
    for j=1:10
        B1(i,j)=i*j;
    end
end
B2=zeros(10,10);
for i=1:10
    B2(i,:)=[1:10]*i;
end
x=1:10;
B3=[x;x*2;x*3;x*4;x*5;x*6;x*7;x*8;x*9;x*10];