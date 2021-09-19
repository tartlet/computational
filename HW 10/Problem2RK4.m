z(:, 1) = [5; 0; 0; 0];
t0 = 0;
h = 0.001;
t_end = 16;
t = t0:h:t_end;
for i = 1:numel(t)-1
    k1n = angles(z(:,i), t(i));
    k2n = angles(z(:,i) + h/2*k1n, t(i) + h/2);
    k3n = angles(z(:,i) + h/2*k2n, t(i) + h/2);
    k4n = angles(z(:,i) + h*k3n, t(i) + h);
    z(:, i+1) = z(:, i) + h/6*(k1n + 2*k2n + 2*k3n + k4n);
end

figure(1);
a1 = plot(t, z(1,:));
xlabel('time (s)')
ylabel('armature current')
title('Armature Current vs. Time')
grid on

figure(2)
a2 = plot(t, z(2,:));
xlabel('time (s)')
ylabel('motor speed')
title('Motor Speed vs. Time')
grid on


function dz = angles(z, t)
a1 = 0.25; m1 = 4.0;
a2 = 0.5; m2 = 7.0;
g = 9.81;

M(1, :) = [0, 0, 1, 0];
M(2, :) = [0, 0, 0, 1];
M(3, :) = 
end

function voltage = v(t)
voltage = 5*sin(0.5*pi*t);
end
