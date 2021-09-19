function [Root] = Secant(x_0, x_1);

x_n = x_1;
x_nm1 = x_0;
Value_xn = g(x_n);
count = 0;

while abs(Value_xn) >= (10^(-3)) && count <= 100
    Value_xn = g(x_n);
    Value_xnm1 = g(x_nm1);
    x_np1 = x_n - Value_xn*((x_n-x_nm1)/(Value_xn-Value_xnm1));
    x_nm1 = x_n;
    x_n = x_np1;
    count = count + 1;
    disp(['iteration ', num2str(count), ': ', num2str(x_n)])
    Value_xn = g(x_n);
end 

Root = x_n;