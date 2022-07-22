function out= fibo(n)
if (n==1||n==0)
    out=n;
else
    out=fibo(n-1)+fibo(n-2);
end