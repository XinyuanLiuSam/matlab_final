%% ================== Author Copywrites ===================
% Author    : Xinyuan Liu
% ID        : a1981985
% Email     : xinyuan.liu@student.adelaide.edu.au
% Date      : 18/04/2025 
%% ========= Periodic Table Application queryElements ==============
% ================================== =====================
function queryChoice=queryElements(elements)
%   Get user's query from user input;
clc;

    while true
        fprintf('===============================\n');
        fprintf('Periodic Table Element Query Choice  \n');
        fprintf('==============================\n');
        fprintf('1.Query by element number      \n ');
        fprintf('2.Query by element name        \n' );
        fprintf('3.Query by element symbol          \n');
        fprintf('4.Query by atomic mass              \n');
        fprintf('5.Query by element period             \n');
        fprintf('q.Quit and return to main             \n ');
        fprintf('---------------------------------------\n');
    
        queryChoice=input('Please enter query choice(1/2/3/4/5/q): ','s');
        switch queryChoice
            case"1"
                disp("do query by element number");
                elementNumber=input("please enter an element number:");
                result=queryByNumber(elements,elementNumber);
            case"2"
                dip("do query by element name .");
                elementName=input("please enter an element name:","s");
                result = queryByName(elements,elementName);
            case"3"
                disp ("do query by element symbol.");
                elementSymbol=input("please enter a Symbol:","s");
                result=queryBySymbol(elements,elementSymbol);
            case"4"
                disp ("do query by atomic mass.");
                mass=input("please enter an atomic mass:");
                result=queryByAtomicMass(elements,mass );
            case"5"
                disp("do query by element period");
                period=input("please enter a period for elements:");
                result=queryByPeriod(elements,period);
            case"q"
                disp("quit and return to main().");
                break
            otherwise
                fprintf('Invalid input, please try again.\n');
        end 
        % display single element.
        % displaySingleElement(result);
        % display multiple elements.
        displayMultipleElements(result);
        
    end
end
        
    


           

