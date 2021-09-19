function [Root1, NumIterations] = FalsePostion(xL, xR);

LeftSol = HW6_P1(xL);
RightSol = HW6_P1(xR);

if LeftSol*RightSol < 0
    LeftX = xL;
    RightX = xR;
    count = 0;
    while count < 5
        XApp = LeftX - ((RightX-LeftX)/(RightSol-LeftSol))*LeftSol
        XApp_Sol = HW6_P1(XApp);
        if LeftSol*XApp_Sol < 0
            RightX = XApp;
        else
            LeftX = XApp;
        end
        count = count + 1;
        disp(['iteration ', num2str(count), ': ', num2str(LeftX), ', ', num2str(RightX)])
    end
else
    disp(['There is no root between ', num2str(a), ' and ', num2str(b)])
end

Root1 = (['The root of the equation is located between ', num2str(LeftX), ...
    ' and ', num2str(RightX)]);
NumIterations = count;