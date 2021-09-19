clear
x = [-10:0.05:10];
y_1 = sqrt((1/2)*(4.*x.^3 - 6.*exp(x) - 4*x + 20));
y_1_2 = -sqrt((1/2)*(4.*x.^3 - 6.*exp(x) - 4*x + 20));
y_2 = (20.*x.^2 - 20).^(1/3);
plot(x, y_1, '-r')
hold on
plot(x, y_1_2, '-r')
plot(x, y_2, '-b')
grid on

x = [];
y = [];
disp("Calculate the intersection coordinates:")
n = input("How many estimate points do you have? ");
for i = 1:n
    disp(["Point " + num2str(i) + ": "]);
    x(i) = input("x value: ");
    y(i)= input("y value: ");
end

for i = 1:n
    Point = VectNewR(x(i), y(i));
    fprintf('Point ')
    fprintf(num2str(i))
    fprintf(' = ')
    fprintf('%.5f', Point(1))
    fprintf(', %.5f \n', Point(2))
end

%{
Point1 = VectNewR(-1.4, 2.678);
Point2 = VectNewR(1.05, 1.27);
fprintf('Point 1 = ')
fprintf('%.5f', Point1(1))
fprintf(', %.5f', Point1(2))
fprintf('\nPoint 2 = ')
fprintf('%.5f', Point2(1))
fprintf(', %.5f \n', Point2(2)) 
%}

function yep = Jacobian(x, y);
    df_1_dx = 12*x^2 - 6*exp(x) - 4;
    df_1_dy = -4*y;
    df_2_dx = 40*x;
    df_2_dy = -3*y^2;
    yep = [df_1_dx df_1_dy; df_2_dx df_2_dy];
end

function out = f_1(x,y)
    out = 4*x^3 - 6*exp(x) - 4*x + 20 - 2*y^2;
end

function out = f_2(x,y)
    out = 20*x^2 - 20 - y^3;
end

function [out, count] = VectNewR(x_guess, y_guess)
    x_0 = x_guess;
    y_0 = y_guess;
    count = 0;
    while sqrt((f_1(x_0, y_0))^2 + (f_2(x_0, y_0))^2) > 10^-5
        count = count + 1;
        A = [x_0; y_0];
        J = Jacobian(x_0, y_0);
        F = [f_1(x_0, y_0); f_2(x_0, y_0)];
        var_New = A - (inv(J))*F;
        x_nm1 = x_0;
        y_nm1 = y_0;
        x_0 = var_New(1); 
        y_0 = var_New(2);
    end
out = [x_0; y_0];
count = count;
end
