clc;
clear all;
dx=1;   %Change in Variable is set tot a high value
x=input('Enter the initial estimate:');    %Initial guess
iter=0;
disp('iter   Dc        J        dx         x')  
while abs(dx)>0.001&iter<100     %Test for convergence
    iter =iter+1;
    Dc=4-(x^3-6*x^2+9*x);      %Residual
    J=3*x^2-12*x+9;  %Derivative
    dx=Dc/J;     %Change in variable
    x=x+dx;       %Successive solution
    fprintf('%g',iter),disp([Dc,J,dx,x])
end
