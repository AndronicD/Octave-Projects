%cerinta 4: semnalul u3
function [u3] = semnalul_u3(lim)
  t = 0:0.1:lim;
  u3 = zeros(1, length(t));
  u1 = semnal_u1(lim);
  u2 = semnal_u2(lim);
  for i = 1:length(t)
    u3(i) = u2(i) + u1(i);
  endfor
%figure;
%plot(t, u3);