function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale 
    % imaginii I pentru fiecare pixel al acesteia
    % =========================================================================
    
    % obtine dimensiunea imaginii
    [m n nr_colors] = size(I);
    
    % TODO: fa cast matricii I la double
    I = cast(I, "double");
    
    % TODO: calculeaza matricea cu derivate fata de x Ix
    Ix = zeros(m, n);
    Ix = cast(Ix, "double");
    for j = 1 : m
      for i = 2 : n-1
        Ix(j,i) = fy(I, j, i);  
      endfor
    endfor
    % TODO: calculeaza matricea cu derivate fata de y Iy
    Iy= zeros(m, n);
    Iy = cast(Iy, "double");
    for j = 2 : m-1
      for i = 1 : n
        Iy(j,i) = fx(I, j, i);  
      endfor
    endfor
    % TODO: calculeaza matricea cu derivate fata de xy Ixy
    Ixy = zeros(m, n);
    Ixy = cast(Ixy, "double");
    for j = 2 : m-1
      for i = 2 : n-1
        Ixy(j,i) = fxy(I, j, i);  
      endfor
    endfor

endfunction
