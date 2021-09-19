%{
x = 0.1:10000;
y = exp(x);
figure(1), semilogy(x,y,'bo')
grid on;


temp = [24 30 60 68 79 85 87 89];
time = 0:5:35
figure(1), bar(time,temp);
title('Engine Temperature graph');
xlabel('Time (secs)')
ylabel('Temperature (degrees)');

theta = 0:pi/50:10*pi;
plot3(sin(theta),cos(theta),theta)
xlabel('sin(theta)')
ylabel('cos(theta)')
zlabel('theta')
grid on
axis square
%}

t = -1.07:0.001:1.07;
figure(1),
title('Square Arrangement');
subplot(2,2,1), plot(t, sin(t))
title('A sine function');
ylabel('Amplitude');
xlabel('Angle in radians');
subplot(2,2,2), plot(t, cos(t))
title('A cosine function');
ylabel('Amplitude');
xlabel('Angle in radians');
subplot(2,2,3), plot(t, tan(t))
title('A tangent function');
ylabel('Amplitude');
xlabel('Angle in radians');
subplot(2,2,4), plot(t, sec(t))
title('A Secant function');
ylabel('Amplitude');
xlabel('Angle in radians');