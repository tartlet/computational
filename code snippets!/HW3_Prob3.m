NumInt = input('How many integers do you want to enter? ');

for i = 1:NumInt
    UserInput = input(['This is loop number ', num2str(i), ' and you '...
    'should enter your integer here: ']);
    if UserInput ~= round(UserInput)
        disp(['Hey that is not an integer -- I''m rounding it to ', ... ,
        num2str(round(UserInput)), '!'])
        disp('Press any key to continue.')
        pause
    end
    disp(['Your integer number ', num2str(i), ' is ', num2str(round(UserInput))])
end