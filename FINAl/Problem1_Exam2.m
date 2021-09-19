clear
z(:, 1) = [5; 0; 0; 0];
t0 = 0;
h = 0.002;
t_end = 2;
t = t0:h:t_end;
for i = 1:numel(t)-1
    k1n = angles(z(:,i), t(i));
    k2n = angles(z(:,i) + h/2*k1n, t(i) + h/2);
    k3n = angles(z(:,i) + h/2*k2n, t(i) + h/2);
    k4n = angles(z(:,i) + h*k3n, t(i) + h);
    z(:, i+1) = z(i) + h/6*(k1n + 2*k2n + 2*k3n + k4n);
end   

subplot(1, 2, 1)
a1 = plot(t, z(1,:));
xlabel('time (s)')
ylabel('Theta 1 (degrees)')
title('Theta 1 vs. Time')
grid on
subplot(1, 2, 2)
a2 = plot(t, z(2,:));
xlabel('time (s)')
ylabel('Theta 1 (degrees)')
title('Theta 2 vs. Time')
grid on

function dz = angles(z,t)
a1 = 0.25; m1 = 4.0;
a2 = 0.5; m2 = 7.0;
g = 9.81;
dz = [z(3);
        z(4);
(-g*(2*m1 + m2)*sind(z(1)) - m2*g*sind(z(1) - 2*z(2)) - 2*sind(z(1)-z(2))*m2*(a2*((z(4))^2) - a1*((z(3))^2) * cosd(z(1) - z(2))))/(a1*(2*m1 + m2 - m2*cosd(2*(z(1)-z(2)))));
(2*(sind(z(1)-z(2)))*(((z(3))^2) * a1* (m1 + m2) + g*(m1 + m2)* (cosd(z(1))) + ((z(4))^2) * a2 * m2 * (cosd(z(1)-z(2)))))/(a2*(2*m1 + m2 - m2*cosd(2*(z(1)-z(2)))))];
end  

