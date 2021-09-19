clear

load('Part1Problem3Workspace.mat', 'x')
time = [45, 90, 135, 180, 225, 270, 315, 360, 405, 450, 495,...,
             540, 585, 630, 675, 720];
resistance = [1008, 718, 593, 525, 506, 436, 396, 401, ...,
             372, 348, 356, 330, 318, 302, 292, 280];
a = x(1);
b = x(2);
c = x(3);
T_int = [];
for i = 1:length(resistance)
    T_int(i) = 1/(a + b*log(resistance(i)) + c * (log(resistance(i)))^3);
end

x_vals = 195.*log(time);
x_vals_squared = x_vals.^2;
sum_xvals = sum(x_vals);
sum_sqvals = sum(x_vals_squared);
N = length(time);

A = [sum_sqvals sum_xvals;
    sum_xvals N];

product_x_y = x_vals .* T_int;
sum_products = sum(product_x_y);
sum_y = sum(T_int);
b = [sum_products; sum_y];
z = inv(A) * b;

for i = 1:length(z)
    if i == 1
        fprintf('%-12s', 'h = ')
    else    
        fprintf('%-12s', 'initial T = ')
    end
    fprintf('%10.5f', z(i));
    fprintf('\n');
end

a1 = plot(time, T_int, 'ob', 'DisplayName', 'Actual Values');
hold on
T_int_est =  z(2) + 195*z(1)*log(time);
a2 = plot(time, T_int_est, 'DisplayName', 'Estimated Values');
xlabel('Time (min)')
ylabel('Temperature (F)')
title('Thermistor Readings over Time with Variable Resistance')
legend