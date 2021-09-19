function [Root1, NumIterations] = FalsePostion(xL, xR);

LeftSol = f(xL);
RightSol = f(xR);
Error = 1*10^(-3);

if LeftSol*RightSol < 0
    LeftX = xL;
    RightX = xR;
    count = 0;
    while abs(RightX - LeftX) > Error 
        if count > 100
            break
        end
        XApp = LeftX - ((RightX-LeftX)/(RightSol-LeftSol))*LeftSol;
        XApp_Sol = f(XApp);
        if LeftSol*XApp_Sol < 0
            RightX = XApp;
        else
            LeftX = XApp;
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