R=0:1:1000;
I=zeros(1,100);
I=9./(1+R);
U=I.*R;
Up=-15:0.01:1.3;
Ip=(1e-9)*(1-exp(Up/5.5e-2));
plot(U,I)
hold on
plot(-Up,Ip)