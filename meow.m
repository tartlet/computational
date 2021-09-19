x = [0.15, 1.04, 1.44, 1.84, 2.24, 2.64, 3.04, 3.44, 3.84, 4.24];
y = [7.5, 5.6, 4.4, 3.6, 3.0, 2.5, 2.2, 1.9, 1.5, 1.1];
figure(1)
yprime = log(y);
plot(x, yprime);
hold on
V = polyfit(x, yprime, 1)  %polyfit output vector for linearised function
y_newfit = polyval(V, x);  %THIS IS ALSO A VECTOR
plot(x, y_newfit);
aprime = V(1);
b = aprime*-1
bprime = V(2);
a = exp(bprime)
xlabel('Distance');
ylabel('Amplitude');
title('Sound Amplitude (linearised)');
hold off

figure(2)
plot(x, y, 'bo');
hold on
yexp = a.*exp(-b.*x);
plot(x, yexp);
xlabel('Distance');
ylabel('Amplitude');
title('Sound Amplitude - Points with Best Fit Exponential Curve');
hold off
