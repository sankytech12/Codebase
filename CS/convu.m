%Assignment 2
%Linear Convolution function
function y=convu(x,h)
L1=length(x);
L2=length(h);
Ny=L1+L2-1;
y = zeros(1,Ny);
for i = 1:L1
      for k = 1:L2
       y(i+k-1) = y(i+k-1) + h(k)*x(i);
      end
end
