%cerinta 1: semnal de intrare dreptunghiular
function f = rect_sig(lim,a,b)
  %lim reprezinta spatiul in care afisez semnalul
  %a reprezinta coordonata de la care semnalul ia valoarea 1
  %b reprezinta coordonata de la care semnalul revine la valoarea 0
  n = -lim:0.01:lim;
  rect = zeros(1,length(n));
  for i = 1:length(n)
    if(n(i) >= a && n(i) <= b)
      rect(i) = 1;
      end
  endfor
  figure;
  plot(n,rect);
  title('Semnal dreptunghiular');
  xlabel("Secunde");
  ylabel("Semnal dreptunghiular");
  legend("semanl dreptunghiular");
