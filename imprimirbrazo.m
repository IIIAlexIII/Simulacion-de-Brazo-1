function imprimirbrazo(objeto,r1,g1,b1);
P0 = objeto(:,1);
P1 = objeto(:,2);
line ([P0(1) P1(1)],[P0(2) P1(2)],[P0(2) P1(2)], 'color', [r1 g1 b1], 'linewidth',3);

end
