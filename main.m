%% ================== Author Copywrites ===================
% Author    : Xinyuan Liu
% ID        : a1981985
% Email     : xinyuan.liu@student.adelaide.edu.au
% Date      : 18/04/2025 
%% ========= Periodic Table Application Main ==============
% ================================== =====================
function main
% MAIN function of periodic Table Application
    preparedElements=loadElements();
    while true
        fprintf("===========================\n");
        fprintf("Periodic Table Application Main \n");
        fprintf("===========================\n");
        fprintf("1. Element Query            \n");
        fprintf("2. Element Game               \n");
        fprintf("q. Quit\n                     \n");
        fprintf("===============================\n");
        mainChoice=input('Please enter your choice (1/2/q):','s');
        switch mainChoice
            case'1'
                disp("do element query module");
                  % getQuerychoice();enter the query module;
                  queryElements(preparedElements);
            case'2'
                disp("do element gaming module");
            case'q'
                disp("Exit periodic Table Application.");
                fprintf('\nGoodbye!\n');
                break;           %enter exit main module;
            otherwise
                fprintf("Invalid input.please try again.\n");
        end
    end
end
  
