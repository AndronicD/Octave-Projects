%cerinta 3: semnalul u1
function [u1] = semnal_u1(lim)
  %lim reprezinta spatiul in care afisez semnalul
  w = 100;
  t = 0:0.1:lim;
  u1 = sin(w*t);
  %figure;
  %plot(t,u1);
  