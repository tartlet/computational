x(1:2,1) = [0.1; 0];
t0 = 0;
h = 0.01;
t_end = 1;
t = t0:h:t_end;
for i = 1:numel(t)-1
    k1n = MSD(x(:,i), t(i));
    k2n = MSD(x(:,i) + h/2*k1n, t(i) + h/2);
    k3n = MSD(x(:,i) + h/2*k2n, t(i) + h/2);
    k4n = MSD(x(:,i) + h*k3n, t(i) + h);
    x(:, i+1) = x(:, i) + h/6*(k1n + 2*k2n + 2*k3n + k4n);
end

a1 = plot(t, x(1,:));
grid on
hold on
a2 = plot(t, x(2,:));
xlabel('time (s)')
ylabel('position and velocity')
legend([a1; a2], ['position'; 'velocity']);
title('Position and Velocity of Mass')



