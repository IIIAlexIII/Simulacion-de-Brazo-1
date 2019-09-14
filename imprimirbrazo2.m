function imprimirbrazo2(objeto,r2,g2,b2);
P1 = objeto(:,1);
P2 = objeto(:,2);
line ([P1(1) P2(1)],[P1(2) P2(2)],[P1(2) P2(2)], 'color', [r2 g2 b2], 'linewidth',3);
end