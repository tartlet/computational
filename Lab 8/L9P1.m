alph = 0:(pi/100):pi/2;  %given angle ranges
beta = 0:pi/100:pi;
[x1g, x2g] = meshgrid(alph, beta);  %create grid
y = 1.*cos(x1g) + 1.*cos(x1g+x2g);  % range equation
surf(x1g, x2g, y)                  %plot surface
xlabel('alpha')
ylabel('beta')
zlabel('Range of Motion (m)')
title('Range of Motion of Robot Arm')


figure(2);
alph = 0:(pi/100):pi/2;  %given angle ranges
beta = 0:pi/100:pi;
[x1g, x2g] = meshgrid(alph, beta);  %create grid
h = 1.*sin(x1g) + 1.*sin(x1g+x2g);  % range equation
surf(x1g, x2g, h)                  %plot surface
xlabel('alpha')
ylabel('beta')
zlabel('Height (m)')
title('Height of Robot Arm')