a = 0.5;
b = -0.5;
t = 0:0.1:10;
for i = 1:length(t)
    x(i) = sin(a*t(i))*exp(b*t(i));
    x2(i) = sin(a*t(i))*cos(a*t(i));
    v(i) = a*cos(a*t(i))*exp(b*t(i))+sin(a*t(i))*exp(b*t(i));
end

figure( 1 ) ;
plot( t, x, 'b-');
hold on % Hold the current plot
plot( t, v, 'r:');
hold off % Turn hold off
grid on % Add a grid to the plot

%{
plot(t,x, 'b', 'linewidth', 2);
title('Position vs. Time');
xlabel('Time (s)');
ylabel('Position (m)');
 
figure(2);
plot(t, v);
title('Velocity vs. Time');
xlabel('Time (s)')
ylabel('Veloctiy (m/s)')
%}
figure(3);
plot(t, x, 'b-', t, v, 'r:');
%}
