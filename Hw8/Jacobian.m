function out = Jacobian(x_guess, y_guess)
partial_f_y = -y_guess/27702;
partial_f_x = x_guess/17298;
partial_g_y = 1/77841*(2*y_guess - 1000);
partial_g_x = -1/172159*(2*x_guess - 600);
out = [partial_f_x, partial_f_y; partial_g_x, partial_g_y];