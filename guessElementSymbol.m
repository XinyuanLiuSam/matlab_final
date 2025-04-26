function guessElementSymbol(elems)
% guess the element number according to the given element symbol by user
% and display the whole information of it.
% 
    symbol = input("Please enter an element symbol:","s");
    % query element according to symobel from user's input.
    element = queryBySymbol(elems, symbol);
    % assure the user input is valid element
    while isempty(element)
        disp("Invalid input, please input again.")
        symbol = input("Please enter an element symbol:","s");
        element = queryBySymbol(elems, symbol);
    end

    elementNumber = input("Please guess the element number [1-118]:");
    while true
        % judge the input element number is valid number or not
        if ~isValidElementNumber(elementNumber)
            disp("Invalid input!");
        else
            if element.number < elementNumber
               disp("Your guessing number is bigger, pls try again")
            elseif   element.number > elementNumber
               disp("Your guessing number is smaller, pls try again")
            elseif  element.number == elementNumber
                disp("Congraduations, you are right!")
                break;
            end
        end
        elementNumber = input("Please guess the element number [1-118]:");
    end
    displaySingleElement(element);
end

