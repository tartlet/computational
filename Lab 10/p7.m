heun_1 = [0];
y_i = 0.5;
yp_begin1 = 0.2;
for t = [0:0.1:10]
    yp_begin = yp_begin1;
    y_nextpredict = y_i + yp_begin*0.1;
    yp_end = (y_nextpredict-y_i)/0.1;
    y_avgnext = y_i + ((yp_begin + yp_end)/2)*0.1;
    heun_1(length(heun_1)+1) = y_avgnext;
    yp_begin1 = (y_avgnext-y_i)/0.1;
    y_i = y_avgnext;
end
t2 = [0:0.1:10];
a2 = plot(t2, heun_1(1:end-1), "-b");
hold on
heun_2 = [0];
y_n = 0.2;
yp_begin1 = -0.5*heun_1(1)-3*(0.5);
for t = [0:0.1:10]
    yp_begin = yp_begin1;
    y_nextpredict = y_n + yp_begin*0.1;
    yp_end = (y_nextpredict-y_n)/0.1;
    y_avgnext = y_n + ((yp_begin + yp_end)/2)*0.1;
    heun_2(length(heun_2)+1) = y_avgnext;
    yp_begin1 = (y_avgnext-y_n)/0.1;
    y_n = y_avgnext;
end
t3 = [0:0.1:10];
a3 = plot(t3, heun_2(1:end-1), "-r");
M2 = "y"
M3 = "dy/dt"
legend([a2,a3], [ M2, M3]);