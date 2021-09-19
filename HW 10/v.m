t0 = 0;
t_end = 0.5;
h = 0.001;
t = t0:h:t_end;
z(1:2, 1) = [0; 0];
for i = 1:numel(t)-1
    z(:, i+1) = z_0 + elec(z, t(i))*h;
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

function voltage = v(t)
if 0 <= t && t< 0.1
    voltage = 100*t;
elseif 0.1 <= t && t <0.4
    voltage = 10;
elseif 0.4 <= t && t< 0.5
    voltage = -100*(t-0.4) + 10;
else
    voltage = 0;
end

function dz = elec(z, t)
A = [-0.005/(10.2*10^-5), 0.050/(10.2*10^-5); -0.061/0.012l, -1/0.012];
b = [0; 1/0.012];
dz = A*z + b*v(t);

