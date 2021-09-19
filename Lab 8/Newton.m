function sol = Newton(G)
count = 0;
x_new = [1; 1];
x_old = G;
while count < 100
    val_old = f1f2(x_old);
    J_old = Jacobian(x_old);
    x_new = x_old - inv(J_old) * val_old;
    x_oldold = x_old;
    x_old = x_new;
    count = count + 1
    if sqrt((x_old(1)-x_oldold(1))^2 + ((x_old(2)-x_oldold(2))^2)) <= 0.01
        break
    end
end
sol = x_new;