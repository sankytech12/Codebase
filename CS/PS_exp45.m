clc;
clear all;
dx=1;
x=0.1;
alpha=1.25;
iter=0;
disp('Iter     g       dx      x')
while(abs(dx)>=0.001 && iter<100)
    iter=iter+1;
    g=(-1/9*x^3)+(6/9*x^2)+4/9;
    dx=g-x;
    x=x+alpha*dx;
    fprintf('%g',iter),disp([g, dx, x])
end
