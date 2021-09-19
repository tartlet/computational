NumString = input('How many strings do you want to enter? ');

for i = 1:NumString
    StoreString = input(['Enter string number ', num2str(i), ': '], 's');
    disp(['Your string number ', num2str(i), ' is ', StoreString])
end