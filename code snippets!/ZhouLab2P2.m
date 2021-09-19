Dice = rand;
if 0 < Dice < 1/6
    Dice = 1;
elseif 1/6 < Dice < 2/6
    Dice = 2;
elseif 2/6 < Dice < 3/6
    Dice = 3;
elseif 3/6 < Dice < 4/6
    Dice = 4;
elseif 4/6 < Dice < 5/6
    Dice = 5;
elseif 5/6 < Dice < 1
    Dice = 6;
else 
    disp('Invalid Roll. Please try again.')
    % to keep probability fair, all the other dice rolls do not include
    % the boundary condition values
    return
end 

disp(['You rolled a ', num2str(Dice), '.'])

if Dice == 6
    disp('Congrats!')
elseif Dice == 5
    disp('Close.')
else
    disp('Please try again.')
end
