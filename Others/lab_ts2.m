clc;
clear all;
close all;
pkg load control

s = tf('s');
H=100/(2*s+1);

%Functia pondere aree un singur pol P = -1/2, sistemul este stabil
%deoarece polul apartine semiplanului negativ

H_p=100/(2*s-1);
%Functia pondere are un singur pol P_p = 1/2, sistemul nu este stabil
%deoarece polul apartine semiplanului pozitiv

%cerinta 3: raspunsul la semnalul treapta
figure(1)
step(H)
figure(2)
step(H_p)
%In grafic se observa faptul ca a doua functie de transfer nu este
%marginita, semnalul iesire tinde spre infinit

%cerinta 4: raspunsul la semnalul impuls
figure(3)
impulse(H)
figure(4)
impulse(H_p)

%cerinta 5: raspunsul la semnalul de intrare u(t)
t = 0:0.01:10;
u = zeros(1,length(t));
for i=1:length(t);
  if(t(i) >= 0 && t(i) < 1)
    u(i) = 1;
  end
  if(t(i) >= 2 && t(i) < 3)
    u(i) = 1;
  end
  if(t(i) >= 4 && t(i) < 5)
    u(i) = 1;
  end
endfor
figure(5)
plot(t, u)

figure(6)
lsim(H,u,t);
