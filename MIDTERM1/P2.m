x = 0:0.005:5;
val = y(x);
plot(x, val)
grid on 
hold on
yline( 2.7, '-r')
yline(0.3, '-r')
plot(0.04964, y(0.04964), '*g')
plot(0.23505, y(0.23505), '*g')
hold off
xlabel('t')
ylabel('y(t)')
title('Midterm 1 Problem 2 with Points')