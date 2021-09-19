t = [0:0.2:5];
g = 32.2;
rho = 1.7;
y = (-32.2/1.7).*exp(-rho.*t) + g/rho;
a1 = plot(t,y);
xlabel('time (seconds)')
ylabel('velocity (ft/s)')
title('Falling Object Model - 10.5 Jingsi Zhou')
hold on
p = 1;
% h = 0.5;
heun_5 = [0];
y_i = 0;
for t = [0:0.5:5]
    yp_begin = -rho*y_i^p + g;
    y_nextpredict = y_i + yp_begin*0.5;
    yp_end = -rho*y_nextpredict^p + g;
    y_avgnext = y_i + ((yp_begin + yp_end)/2)*0.5;
    heun_5(length(heun_5)+1) = y_avgnext;
    y_i = y_avgnext;
end
t2 = [0:0.5:5];
a2 = plot(t2, heun_5(1:end-1), "ob")
% h = 0.2;
heun_2 = [0];
y_i = 0;
for t = [0:0.2:5]
    yp_begin = -rho*y_i^p + g;
    y_nextpredict = y_i + yp_begin*0.2;
    yp_end = -rho*y_nextpredict^p + g;
    y_avgnext = y_i + ((yp_begin + yp_end)/2)*0.2;
    heun_2(length(heun_2)+1) = y_avgnext;
    y_i = y_avgnext;
end
t3 = [0:0.2:5];
a3 = plot(t3, heun_2(1:end-1), "or")
M1 = "Exact Value Curve";
M2 = "Heun's Method with h = 0.5";
M3 = "Heun's Method with h = 0.2";
legend([a1,a2,a3], [M1, M2, M3]);
