%cerinta 2: semnal de intrare triunghiular
function f = trian_sig(lim)
  %lim reprezinta spatiul in care afisez semnalul
  n = -lim:0.01:lim;
  trian = zeros(1, length(n));
  for i = 1:length(n)
    if(n(i) >= -1 && n(i) <= 1)
      trian(i) = 1 - abs(n(i));
    end
  endfor
  figure;
  plot(n,trian);
  title('Semnal triunghiular');
  xlabel("Secunde");
  ylabel("Semnal triunghiular");
  legend("semanl triunghiular");