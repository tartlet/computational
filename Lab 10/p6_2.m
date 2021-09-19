t = [0:0.2:3];
g = 32.2;
rho = 1.5;
y = (-32.2/1.5).*exp(-rho.*t) + g/rho;
a1 = plot(t,y, '-black');
xlabel('time (seconds)')
ylabel('velocity (ft/s)')
title('Falling Object Model Heun''s Method - 10.6')
hold on
p = 1;
% h = 0.1;
heun_5 = [0];
y_i = 0;
for t = [0:0.1:3]
    yp_begin = -rho*y_i^p + g;
    y_nextpredict = y_i + yp_begin*0.1;
    yp_end = -rho*y_nextpredict^p + g;
    y_avgnext = y_i + ((yp_begin + yp_end)/2)*0.1;
    heun_5(length(heun_5)+1) = y_avgnext;
    y_i = y_avgnext;
end
t2 = [0:0.1:3];
a2 = plot(t2, heun_5(1:end-1), "-b")
% h = 0.025;
heun_2 = [0];
y_i = 0;
for t = [0:0.025:3]
    yp_begin = -rho*y_i^p + g;
    y_nextpredict = y_i + yp_begin*0.025;
    yp_end = -rho*y_nextpredict^p + g;
    y_avgnext = y_i + ((yp_begin + yp_end)/2)*0.025;
    heun_2(length(heun_2)+1) = y_avgnext;
    y_i = y_avgnext;
end
t3 = [0:0.025:3];
a3 = plot(t3, heun_2(1:end-1), "-r")
% h = 0.01;
heun_3 = [0];
y_i = 0;
for t = [0:0.01:3]
    yp_begin = -rho*y_i^p + g;
    y_nextpredict = y_i + yp_begin*0.01;
    yp_end = -rho*y_nextpredict^p + g;
    y_avgnext = y_i + ((yp_begin + yp_end)/2)*0.01;
    heun_3(length(heun_3)+1) = y_avgnext;
    y_i = y_avgnext;
end
t4 = [0:0.01:3];
a4 = plot(t4, heun_3(1:end-1), "-g")
M1 = "Exact Value Curve";
M2 = "Heun's Method with h = 0.1";
M3 = "Heun's Method with h = 0.025";
M4 = "Heun's Method with h = 0.01";
legend([a1,a2,a3, a4], [M1, M2, M3, M4]);