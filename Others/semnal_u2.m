%cerinta 3: semnalul u2
function [u2] = semnal_u2(lim)
  t = 0:0.1:lim;
  u2 = zeros(1, length(t));
  for i = 1:length(t)
    if(t(i) >= 0)
      u2(i) = 1;
     end
  endfor
  %figure;
  %plot(t,u2);