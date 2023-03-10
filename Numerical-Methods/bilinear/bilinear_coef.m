function a = bilinear_coef(f, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii a pentru interpolarea biliniara intre punctele
    % (x1, y1), (x1, y2), (x2, y1) si (x2, y2)
    % =========================================================================
    
    % TODO: calculeaza matricea A
    A = zeros(4,4);
    A = [1 x1 y1 x1*y1; 1 x1 y2 x1*y2; 1 x2 y1 x2*y1; 1 x2 y2 x2*y2];
    A = cast(A,"double");
    % TODO: calculeaza vectorul b    
    b = [f(y1,x1) f(y2,x1) f(y1,x2) f(y2,x2)]';
    b = cast(b,"double");
    % TODO: calculeaza coeficientii
    a = zeros(4,1);
    a = A\b;
    a = cast(a,"double");
endfunction
