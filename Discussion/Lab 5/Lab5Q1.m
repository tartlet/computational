load('data.mat');

figure(1);
title('Lab 5 Question 1');
subplot(2, 2, 1);     %first graph with time and xdisp data set
plot(time, xdisp);
title('Spring Mass Damper System');
xlabel('time (s)');
ylabel('displacement (m)');
subplot(2, 2, 2);
bar(measles);
title('Measles Cases in Children per Month'); %bar graph that shows measles data
xlabel('Month Number');
ylabel('Reported Cases');
subplot(2, 2, 3);
x = -3:0.1:3;
y = -3:0.1:3;
[x1g, y1g] = meshgrid(x, y);   %meshgrid so that z can be calculated and 
z = x1g.^2+y1g.^2;             %so 3D graph can be properly graphed
mesh(x1g,y1g,z)
title('3D graph')
subplot(2, 2, 4);
semilogx(frequency, magnitude);
title('Second Order Dynamic System Response');
xlabel('frequency (Hz)');      %used semilogx here because frequency data set
ylabel('response (dB)');       %encompasses a large range

