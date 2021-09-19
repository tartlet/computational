Low = input('Enter the lower number: ');
High = input('Enter the larger number: ');
step = input('step between numbers (Enter 0 for default): ');

if step == 0
    step = 1;
end

if Low <= High
    SummationAccumulator = 0; %initialise the sum
    
    for Index = Low:step:High
        disp(['Now adding ' num2str(Index)])
        disp(['Old sum is ' num2str(SummationAccumulator)])
        disp('press any key')
        pause 
        %pause causes M-files to stop and wait for you to press any key
        %before continuing.
        %pause(n) pauses execution for n seconds before continuing, where n
        %can be any real number 
        SummationAccumulator = SummationAccumulator + Index;
        disp(['New sum is ' num2str(SummationAccumulator)])
        disp('press any key')
        pause
    end
    disp(['Your sum is ' num2str(SummationAccumulator)])
else
    %clear clears the variable but returns an error if the line 24 code is
    %added in
    disp('You entered invalid numbers - see you next time!')
end
%disp(['Your sum is ' num2str(SummationAccumulator)]) 