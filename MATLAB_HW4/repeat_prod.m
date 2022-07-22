function out =repeat_prod(n)
P=1;
for i=1:n-1
    P=P*(1+(0.2*i));
end
out=P;