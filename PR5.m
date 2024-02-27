%Pr�ctica 5. Modelado de sistemas El�ctricos; circuito RLC
%Jorge Armando Charles Michel

function dy = PR5(t,y)
%Definici�n de par�metros
r = 100;
l = 6*10^-3;
c = 0.1*10^-6;
%v = 12;
v=6*(1+square(2*pi*(1/2e-3)*t,50));
%Vector de los estados
dy = zeros(2,1);
%Definici�n din�mica del sistema
dy (1) = y(2);
dy (2) = ((v-r*y(2)-y(1)/c)/(l));