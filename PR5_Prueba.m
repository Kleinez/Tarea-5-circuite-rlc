[t,x]=ode45(@PR5,[0 .002],[0 0]);
%odea45 (función, tiempo de muestreo, valores iniciales)
%Aqui se crea la figura donde se va a graficar el x con respecto a t
%s y t son parametros que retorna la función ode45

c = 0.1*10^-6;
figure(1)
plot(t,(x(:,1)/c));
grid on
hold on
title("Voltaje del Capacitor");
findpeaks(x(:,1)/c)