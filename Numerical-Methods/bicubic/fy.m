function r = fy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de y a lui f in punctul (x, y).
    % =========================================================================
    
    % TODO: calculeaza derivata
    r = 0;
    %r = cast(r, "double");
    r = (f(x, y+1)-f(x, y-1))/2;
endfunction