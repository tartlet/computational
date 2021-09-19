function Root = NewtonRhapson(x);

x_n = x;
Value_xn = f(x_n);
count = 0;

while abs(Value_xn) >= 10^(-7)
    Value_xn = f(x_n);
    Deriv_xn = f_deriv(x_n);
    x_np1 = x_n - (Value_xn/Deriv_xn);
    x_n = x_np1;
    count = count + 1;
    fprintf(['iteration ', num2str(count)])
    fprintf(': %.6f \n', x_n)
    Value_xn = f(x_n);
end 

Root = x_n;
fprintf('Root = %.6f \n', x_n);


    