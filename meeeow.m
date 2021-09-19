figure(1)
x = [0.15, 1.04, 1.44, 1.84, 2.24, 2.64, 3.04, 3.44, 3.84, 4.24];
y = [7.5, 5.6, 4.4, 3.6, 3.0, 2.5, 2.2, 1.9, 1.5, 1.1];
plot(x,y, 'bo')
hold on
x2 = 0:5;
y2 = -2.*x2 + 8;
plot(x2, y2)
hold off
xlabel('Distance')
ylabel('Amplitude')
title('Measurements of Sound Amplitude')
