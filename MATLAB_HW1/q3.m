x1 = linspace(1, 10, 60);
x2 = linspace(4, 0, 60);
x = x1.*x2;
c1=find(x>8);
c2=x(x<6);
c3=find(x>5|x<2);