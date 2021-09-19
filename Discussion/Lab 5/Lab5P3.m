x = -10:0.1:20;
y = f(x)
figure(1);
plot(x, y, 'g');
title('Problem 5.4');
xlabel('x');
ylabel('f(x)');
grid on

hold on
plot(16.918, f(16.918), 'r*')
hold off