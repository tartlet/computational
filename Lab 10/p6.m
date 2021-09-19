t = [0:0.2:3];
g = 32.2;
rho = 1.5;
y = (-32.2/1.5).*exp(-rho.*t) + g/rho;
a1 = plot(t,y, '-black');
xlabel('time (seconds)')
ylabel('velocity (ft/s)')
title('Falling Object Model Euler''s Method - 10.6')
hold on
%h = 0.1
euler_1 = [0];
p = 1;
y_i = 0; %first deriv for t=0
for t = [0:0.1:3]
    deriv_i =  -rho*y_i^p + g;
    y_ip1 = y_i + deriv_i*0.1;
    euler_1(length(euler_1)+1) = y_ip1;
    y_i = y_ip1;
end
t2 = [0:0.1:3];
a2 = plot(t2, euler_1(1:end-1), '-b');
%h = 0.025
euler_2 = [0];
p = 1;
y_i = 0; %first deriv for t=0
for t = [0:0.025:3]
    deriv_i =  -rho*y_i^p + g;
    y_ip1 = y_i + deriv_i*0.025;
    euler_2(length(euler_2)+1) = y_ip1;
    y_i = y_ip1;
end
t3 = [0:0.025:3];
a3 = plot(t3, euler_2(1:end-1), '-r');
%h = 0.01
euler_3 = [0];
p = 1;
y_i = 0; %first deriv for t=0
for t = [0:0.01:3]
    deriv_i =  -rho*y_i^p + g;
    y_ip1 = y_i + deriv_i*0.01;
    euler_3(length(euler_3)+1) = y_ip1;
    y_i = y_ip1;
end
t4 = [0:0.01:3];
a4 = plot(t4, euler_3(1:end-1), '-g');
M1 = "Exact Value Curve";
M2 = "Euler's Method with h = 0.1";
M3 = "Euler's Method with h = 0.025";
M4 = "Euler's Method with h = 0.01";
legend([a1,a2,a3, a4], [M1, M2, M3, M4]);
