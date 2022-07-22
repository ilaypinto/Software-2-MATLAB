a=0;b=pi/2;
i1=0;i2=0;i3=0;
N1=5;N2=50;N3=500;
h1=(b-a)/N1;h2=(b-a)/N2;h3=(b-a)/N3;
for t=1:N1
    x=a+(t-0.5)*h1;
    i1=i1+sin(x)*cos(x)*h1;
end
for t=1:N2
    x=a+(t-0.5)*h2;
    i2=i2+sin(x)*cos(x)*h2;
end
for t=1:N3
    x=a+(t-0.5)*h3;
    i3=i3+sin(x)*cos(x)*h3;
end