%This will be a little game (described in the lecture notes)

GamePlayingKey=true; %I give the user the key to play the game as soon as the user calls this program

while GamePlayingKey
    %Here's my game
    disp('Playing the game')
    pause(3) %pausing for 3 seconds - pretending the game is happening
    disp('Game over!')
    %Now we ask the user - do you want to keep playing
    %User entering the answer about playing the game
    UserAnswer=input('Do you want to play the game? Answer yes/Yes/YES or No/no/NO -> ','s');
    if strcmp(UserAnswer,'yes')||strcmp(UserAnswer,'YES')||strcmp(UserAnswer,'Yes')
        %this is the situation when the user wants to keep playing
        %keep the key
        GamePlayingKey=true; %I really do not need to do this - but the code is more legible (at lesat Dragan thinks so)
    elseif strcmp(UserAnswer,'no')||strcmp(UserAnswer,'No')||strcmp(UserAnswer,'NO')
        %This is the situation when the user does NOT want to play any more
        GamePlayingKey=false; %taking away the key for playing
        disp('Oh nooo... Come back to play again soon! Ending the game!')
    end
end
disp('Out of the loop - REALLY ending the program')
    
