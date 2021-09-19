clear
Start = false;

while Start == false
    UserInput = input('How many integer numbers do you want in your array? ');
    if UserInput == floor(UserInput)
        Start = true;
    else
        disp('Hey that is not an integer - try again!')
    end
end

for i = 1:UserInput
    NewNumber = input(['What number do you want at index ', num2str(i), '? ']);
    PlaceNumber = false;
    while PlaceNumber == false
        if NewNumber == floor(NewNumber)
            PlaceNumber = true;
        else
            disp('Hey that is not an integer - try again!')
        end
    end
    UserArray(i) = NewNumber;
    disp([num2str(UserArray(i)), ' is at index ', num2str(i), '. '])
end

UserArray
length = length(UserArray);
eveni = 1;
oddi = 1;

for i = 1:length
    if mod(UserArray(i),2) == 0
        %for eveni = 1:length
        EvenArray(eveni) = UserArray(i);
        eveni = eveni + 1;
        %end
    else
        %for oddi = 1:length
        OddArray(oddi) = UserArray(i);
        oddi = oddi + 1;
        %end
    end
end

EvenArray
OddArray
 
        
