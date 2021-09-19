function [Root1, NumIterations] = Bisect(xL, xR);

LeftSol = y(xL) - 2.7;
RightSol = y(xR) - 2.7;

if LeftSol*RightSol < 0
    LeftX = xL;
    RightX = xR;
    count = 0;
    while count < 20
        MidX = (LeftX + RightX)/2;
        Middle = y(MidX) - 2.7;
        if Middle*(f(LeftX) - 2.7) < 0
            RightX = MidX;
        else
            LeftX = MidX;
        end
        count = count + 1;
        fprintf(['iteration ', num2str(count)])
        fprintf(': %.5f', LeftX)
        fprintf(', %.5f \n', RightX)
    end
else
    disp(['There is no root between ', num2str(xL), ' and ', num2str(xR)])
end

Root1 = [];
fprintf('The root of the equation is located between %.5f', LeftX);
fprintf(' and %.5f \n', RightX);
NumIterations = count;