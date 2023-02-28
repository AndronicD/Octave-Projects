%semnalul h
function [h] = semnal_h(lim)
  t = 0:0.1:lim;
  h = zeros(1, length(t));
  for i = 1:length(t)
    h(i) = (100/3)*exp(-t(i)/3);
  endfor
  %figure;
  %plot(t, h);