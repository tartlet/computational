function [Root1, NumIterations] = BisectRootHW6(xL, xR);

LeftSol = f(xL);
RightSol = f(xR);

if LeftSol*RightSol < 0
    LeftX = xL;
    RightX = xR;
    count = 0;
    while count < 5
        MidX = (LeftX + RightX)/2;
        Middle = f(MidX);
        if Middle*RightSol < 0
            LeftX = MidX;
        else
            RightX = MidX;
        end
        count = count + 1;
        disp(['iteration ', num2str(count), ': ', num2str(LeftX), ', ', num2str(RightX)])
    end
else
    disp(['There is no root between ', num2str(xL), ' and ', num2str(xR)])
end

Root1 = (['The root of the equation is located between ', num2str(LeftX), ...
    ' and ', num2str(RightX)]);
NumIterations = count;