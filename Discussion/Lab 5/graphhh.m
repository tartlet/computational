x = -3.5:0.01:-1.5;
y = g(x);
plot(x, y)
title('Problem 6.2 Lab 6')
xlabel('x')
ylabel('g(x)')
grid on
hold on
plot(-3.2810, g(-3.2810), "ro")
plot(-2.6335, g(-2.6335), "ro")
plot(-1.9610, g(-1.9610), "ro")
hold off
