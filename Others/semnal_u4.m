%cerinta 5: semnalul treapta intarziat u4
function [u4] = semnal_u4(lim)
  t = 0:0.1:lim;
  u4 = zeros(1,length(t));
  for i = 1:length(t)
    if(t(i) >= 3)
      u4(i) = 1;
    end
  endfor
  %figure;
  %plot(t,u4);
