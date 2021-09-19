function Root = Secant(x);

x_1 = x + 0.1;
Value_x1 = y(x_1);
count = 0;

while x_1 < 2.7
    x_minus1 = x_1 - 0.1;
    Value_xminus1 = y(x_minus1);
    x_np1 = x_1 - (Value_x1)*((x_1 - x_minus1)/(Value_x1 - Value_xminus1));
    x_1 = x_np1;
    count = count + 1;
    fprintf(['iteration ', num2str(count)])
    fprintf(': %.6f \n', x_1)
    Value_x1 = y(x_1);
end 

Root = x_1;
fprintf('Root = %.5f \n', x_1);


    