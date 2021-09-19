
y_0 = input('Initial condition: ');
t_0 = input('t initial? ');
h = input('step? ');
t_end = input('end value of t? ');
vval = [];
xni = -10*y_0 + 249*exp(0/0.07)*sin(0);
for t = [t_0:h:t_end]
    xn = xni;
    disp(['At t = ', num2str(t), ', y'' = ', num2str(xn)])
    k1n = [xn, t];
    k2n = [xn + (k1n* h/2), t + h/2];
    k3n = [xn + (k2n* h/2), t + h/2];
    k4n = [xn + (k3n* h/2), t + h/2];
    xnp1 = xn + (h/6)*(k1n(1) + 2*k2n(1) + 2*k3n(1) + k4n(1));
    v = 24.9*exp(-t/0.07)*sin(2*pi*t/0.035)-0.1*xn;
    vval(length(vval)+1) = v;
    xni = xnp1;
end
t1 = [t_0:h:t_end];
plot(t1, vval)

xlabel('time (seconds)')
ylabel('voltage')
title('Voltage vs Time 10.8')
