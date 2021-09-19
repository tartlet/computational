t = [0:0.2:5];
g = 32.2;
rho = 1.7;
y = (-32.2/1.7).*exp(-rho.*t) + g/rho;
plot(t,y);
xlabel('time (seconds)')
ylabel('velocity (ft/s)')
title('Falling Object Model - 10.3 Jingsi Zhou')
hold on
%h = 0.5
euler_5 = [0];
p = 1;
y_i = 0; %first deriv for t=0
for t = [0:0.5:5]
    deriv_i =  -rho*y_i^p + g;
    y_ip1 = y_i + deriv_i*0.5;
    euler_5(length(euler_5)+1) = y_ip1;
    y_i = y_ip1;
end
t2 = [0:0.5:5];
plot(t2, euler_5(1:end-1), 'ob');
%h = 0.2
euler_2 = [0];
p = 1;
y_i = 0; %first deriv for t=0
for t = [0:0.2:5]
    deriv_i =  -rho*y_i^p + g;
    y_ip1 = y_i + deriv_i*0.2;
    euler_2(length(euler_2)+1) = y_ip1;
    y_i = y_ip1;
end
t3 = [0:0.2:5];
plot(t3, euler_2(1:end-1), 'or');
%p= 1.1
euler_p4 = [0];
p = 1.1;
y_i = 0; %first deriv for t=0
for t = [0:0.3:5]
    deriv_i =  -rho*y_i^p + g;
    y_ip1 = y_i + deriv_i*0.3;
    euler_p4(length(euler_p4)+1) = y_ip1;
    y_i = y_ip1;
end
t3 = [0:0.3:5];
plot(t3, euler_p4(1:end-1), 'og');