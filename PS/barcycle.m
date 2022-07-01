function barcycle(data)
L=length(data);
tt = [data(:,1) data(:,2)];
t = sort(reshape(tt, 1, 2*L));
PP=data(:,3);
for n = 1:L
P(2*n-1)=PP(n);
P(2*n)=PP(n);
end
plot(t,P)