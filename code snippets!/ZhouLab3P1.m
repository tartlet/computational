clear
response = 1;
count = 0;
while (response ~= 0)
    disp('Hello Mr. Anderson!')
    response = input('Enter a number ~= 0 to repeat, Enter 0 to stop: ');
    if response == 0
        break
    end
    count = count + 1;
end

disp(['The user told the computer to repeat ', num2str(count), ' times.'])