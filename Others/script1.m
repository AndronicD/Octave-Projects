I = zeros(1,100);
U = zeros(1,100);
R = 0:0.1:9.9
for i = 1:1:100
  I(i)=9/(R(i)+1);
endfor
for i = 1:1:100
  U(i) = 9*R(i)/(R(i)+1);
endfor
P=U.*I;
figure(1)
plot(R,I)
hold on
plot(R,U)
hold on
plot(R,P)