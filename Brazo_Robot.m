close all
clear all
clc

prompt = 'Introduzca el valor en grados de la primera rotación:     '; 
theta1Deg = input(prompt);                                          

prompt = 'Introduzca el valor en grados de la segunda rotación:     '; 
theta2Deg = input(prompt);

angulo1 = gradoaradianes(theta1Deg);
angulo2 = gradoaradianes(theta2Deg);

P0 = [0 ; 0 ; 0]; %[Punto_x; Punto_y; Punto_z]
L1 = 8;
L2 = 4;

for t = 0 : 0.01 : angulo1
    clf
    
    imprimirejescoordenados();  %Imprime ejes coordenados
    grid on

Rz1 = [cos(t) -sin(t) 0 0;sin(t) cos(t) 0 0; 0 0 1 0;0 0 0 1];
Tx1 = [1 0 0 L1;0 1 0 0;0 0 1 0;0 0 0 1];
Tf1 = Rz1*Tx1;
P1  = Tf1(1:3,4);

brazo = [P0 P1];
imprimirbrazo(brazo,0.8,0.6,0.8);

Rz2 = [cos(0) -sin(0) 0 0;sin(0) cos(0) 0 0; 0 0 1 0;0 0 0 1];
Tx2 = [1 0 0 L2;0 1 0 0;0 0 1 0;0 0 0 1];
Tf2 = Rz2*Tx2;
Tf = Tf1*Tf2
P2 = Tf(1:3,4);

V0x = Rz1(1:3,1);
V0y = Rz1(1:3,2);

V1x = P1+Tf1(1:3,1);
V1y = P1+Tf1(1:3,2);

V2x = P2+Tf(1:3,1);
V2y = P2+Tf(1:3,2);

brazo2 = [P1 P2];
imprimirbrazo2(brazo2,0.2,0.6,0.8);

line ([P0(1) V0x(1)],[P0(2) V0x(2)],[P0(2) V0x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P0(1) V0y(1)],[P0(2) V0y(2)],[P0(2) V0y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P1(1) V1x(1)],[P1(2) V1x(2)],[P1(2) V1x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P1(1) V1y(1)],[P1(2) V1y(2)],[P1(2) V1y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P2(1) V2x(1)],[P2(2) V2x(2)],[P2(2) V2x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P2(1) V2y(1)],[P2(2) V2y(2)],[P2(2) V2y(2)], 'color', [0 1 0], 'linewidth',1);

pause(0.001)
end

for b = 0 : 0.01 : angulo2
    clf
    imprimirejescoordenados();  
    grid on
    
Rz2 = [cos(b) -sin(b) 0 0;sin(b) cos(b) 0 0; 0 0 1 0;0 0 0 1];
Tx2 = [1 0 0 L2;0 1 0 0;0 0 1 0;0 0 0 1];
Tf2 = Rz2*Tx2;
Tf = Tf1*Tf2
P2 = Tf(1:3,4);

brazo2 = [P1 P2];

V2x = P2+Tf(1:3,1);
V2y = P2+Tf(1:3,2);
V2 = [V2x V2y];

imprimirbrazo(brazo,0.8,0.6,0.8);
imprimirbrazo2(brazo2,0.2,0.6,0.8);

line ([P0(1) V0x(1)],[P0(2) V0x(2)],[P0(2) V0x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P0(1) V0y(1)],[P0(2) V0y(2)],[P0(2) V0y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P1(1) V1x(1)],[P1(2) V1x(2)],[P1(2) V1x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P1(1) V1y(1)],[P1(2) V1y(2)],[P1(2) V1y(2)], 'color', [0 1 0], 'linewidth',1);
line ([P2(1) V2x(1)],[P2(2) V2x(2)],[P2(2) V2x(2)], 'color', [1 0 0], 'linewidth',1);
line ([P2(1) V2y(1)],[P2(2) V2y(2)],[P2(2) V2y(2)], 'color', [0 1 0], 'linewidth',1);

pause(0.001)
end


