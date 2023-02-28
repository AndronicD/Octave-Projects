function A = bicubic_coef(f, Ix, Iy, Ixy, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii de interpolare bicubica pentru 4 puncte alaturate
    % =========================================================================
    
    B = [f(y1,x1) f(y2,x1); f(y1,x2) f(y2,x2)];
    B = cast(B, "double");
    % TODO: calculeaza matricile intermediare
    Ix_f = [Ix(y1,x1) Ix(y2,x1); Ix(y1,x2) Ix(y2,x2)];
    Iy_f = [Iy(y1,x1) Iy(y2,x1); Iy(y1,x2) Iy(y2,x2)];
    Ixy_f = [Ixy(y1,x1) Ixy(y2,x1); Ixy(y1,x2) Ixy(y2,x2)];
    % TODO: converteste matricile intermediare la double
    Ix_f = cast(Ix_f, "double");
    Iy_f = cast(Iy_f, "double");
    Ixy_f = cast(Ixy_f, "double");
    % TODO: calculeaza matricea finala
    A = zeros(4,4);
    A = [1 0 0 0; 0 0 1 0; -3 3  -2 -1; 2 -2 1 1]*[B Iy_f; Ix_f Ixy_f]*[1 0 -3 2; 0 0 3 -2; 0 1 -2 1; 0 0 -1 1];
    %A = cast(A, "double");
endfunction