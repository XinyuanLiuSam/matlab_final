%% ================== Author Copywrites ===================
%   Author    :   Xinyuan Liu
%   ID        :   a1981985
%   Email     :   xinyuan.liu@student.adelaide.edu.au
%   Date      :   18/04/2025 

%% == Periodic Table Application - Moduel - Gaming Elements ==

 
%  ========================================================

function queryChoice = gamingElements(preparedElements)
%   Get user's query choice from user input;  
    while true
        clc;
        fprintf('========================================\n');
        fprintf(' Periodic Table Element Gaming Choice   \n');
        fprintf('========================================\n');
        fprintf(' 1. Gaming by element symbol            \n');
        fprintf(' 2. Gaming by element period            \n');
        fprintf(' q. Quit and return to main             \n');
        fprintf('----------------------------------------\n');
        queryChoice = input('Please enter query choice (1/2/q): ', 's');
        switch queryChoice
            case "1"
                disp("do gussing game of element symbol.");
                guessElementSymbol(preparedElements);
            case "2"
                disp("do guessing game of element period.");
                guessElementPeriod(preparedElements);
            case "q"
                disp("quit and return to main().");
                break;
            otherwise
                fprintf('Invalid input. Please try again.\n');
        end
    end
end

