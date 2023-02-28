function out = nn_2x2_RGB(img, STEP = 0.1)
    % =========================================================================
    % Aplica interpolare nearest neighbour pe imaginea 2x2 img cu puncte
    % intermediare echidistante.
    % img este o imagine colorata RGB.
    % =========================================================================
    % TODO: extrage canalul rosu al imaginii
    R=zeros(2,2);
    R=img(:,:,1);
    %disp(R);
    % TODO: extrage canalul verde al imaginii
    G=zeros(2,2);
    G=img(:,:,2);
    %disp(G);
    % TODO: extrace canalul albastru al imaginii
    B=zeros(2,2);
    B=img(:,:,3);
    %disp(B);
    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    R1=nn_2x2(R,STEP);
    G1=nn_2x2(G,STEP);
    B1=nn_2x2(B,STEP);
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat
    out = cat(3,R1,G1,B1);
endfunction
