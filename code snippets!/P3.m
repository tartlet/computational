Age = input('How old are you? ');

if (0 < Age) && (Age < 5)
    disp('Oh that''s so cute!')
elseif (5 <= Age) && (Age < 14)
    disp('Oh, how''s school going?')
elseif (14 <= Age) && (Age < 19)
    disp('So, how do you like highschool?')
elseif (19 <= Age) && (Age < 25)
    disp('Are you in college?')
elseif (25 <= Age) && (Age < 55)
    disp('Oh, what do you do for a living?')
elseif (55 <= Age) && (Age < 70) 
    disp('Do you have grandchildren?')
elseif (70 <= Age) && (Age < 90)
    disp('Stay healthy and beware the corona virus.')
elseif Age >= 90
    disp('Oh, that is fantastic!')
end