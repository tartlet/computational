x = -1:0.1:6;
y = g(x);
figure(1);
plot(x, y, 'b');
title('Problem 5.6');
xlabel('x');
ylabel('g(x)');
grid on
%{
grid on
hold on
plot(-3.2811, g(-3.2811), 'r*')
plot(-2.6337, g(-2.6337), 'r*')
plot(-1.9608, g(-1.9608), 'r*')
hold off
%}