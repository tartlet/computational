%This will be a little game (described in the lecture notes)
%We will keep asking the user UNTIL we understand his/her answer!

GamePlayingKey=true; %I give the user the key to play the game as soon as the user calls this program

while GamePlayingKey
    %Here's my game
    disp('Playing the game')
    pause(3) %pausing for 3 seconds - pretending the game is happening
    disp('Game over!')
    %Now we ask the user - do you want to keep playing
    %User entering the answer about playing the game
    %We neeed to keep asking UNTIL we understand
    UserAnsweringKey=true; %key for entering the loop where we keep asking the user for his/her answer
    %That key will remain true until we UNDERSTAND the user. WHen we do -
    %take it away!!!
    while UserAnsweringKey
        UserAnswer=input('Do you want to play the game? Answer yes/Yes/YES or No/no/NO -> ','s');
        if strcmp(UserAnswer,'yes')||strcmp(UserAnswer,'YES')||strcmp(UserAnswer,'Yes')
            %Here I understand the user!!!
            %this is the situation when the user wants to keep playing
            %keep the key
            GamePlayingKey=true; %I really do not need to do this - but the code is more legible (at lesat Dragan thinks so)
            %Take away the answering key - stop pestering the user
            UserAnsweringKey=false;
            %Done with answering & the user wants to KEEP PLAYING
        elseif strcmp(UserAnswer,'no')||strcmp(UserAnswer,'No')||strcmp(UserAnswer,'NO')
            %Again, understand the user here!
            %This is the situation when the user does NOT want to play any more
            GamePlayingKey=false; %taking away the key for playing
            disp('Oh nooo... Come back to play again soon! Ending the game!')
            UserAnsweringKey=false; %take away the answering key. WE GOT THE MESSAGE
        elseif strcmp(UserAnswer,'leave me alone')
            disp('how rude')
            UserAnsweringKey=false;
            GamePlayingKey=false;
            %Feel free to modify this program, add more options and
            %practice!
        else
            %I do NOT understand the user input
            disp('I do not understand - MUST ask you again!')
            UserAnsweringKey=true; %I do not really need to do this, but it's more understandable (at least Dragan thinks so)
        end
    end
    
end

disp('Out of the loop - REALLY ending the program')
    
