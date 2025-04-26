function guessElementPeriod(elems)
% guessPeriod  —  Ask the user to guess the period of a given element
%
%   elems : struct array with fields
%           .number, .symbol, .name, .period, etc.
%
    % 1. Prompt the user to enter an element symbol and validate
    symbol = input("Please enter an element symbol: ","s");
    element = queryBySymbol(elems, symbol);
    while isempty(element)
        disp("Invalid symbol, please try again.");
        symbol = input("Please enter an element symbol: ","s");
        element = queryBySymbol(elems, symbol);
    end

    % 2. Ask the user to guess which period (1–7)
    fprintf('Element %s (%s) belongs to which period? Enter an integer 1 to 7:\n', ...
            element.name, element.symbol);
    guess = input("Your guess: ");

    % 3. Loop until guess is correct
    while true
        if ~isValidPeriodNumber(guess)
            disp("Invalid input. try again!");
        elseif guess < element.period
            disp("Too low, try again!");
        elseif guess > element.period
            disp("Too high, try again!");
        else
            disp("Congratulations, that’s correct!");
            break;
        end
        fprintf('Element %s (%s) belongs to which period? Enter an integer 1 to 7:\n', ...
        element.name, element.symbol);
        guess = input("Your guess: ");
    end

    % 4. Display all elements in the guessed period
    fprintf("\nHere are all the elements in Period %d:\n\n", guess);
    % Filter elements by period
    periodElems = elems([elems.period] == guess);
    disp(periodElems);

    % Use the provided displayMultipleElements function
    displayMultipleElements(periodElems);
end

% Helper: validate that n is an integer from 1 to 7
function ok = isValidPeriodNumber(n)
    ok = isnumeric(n) && isscalar(n) && (n == floor(n)) && (n >= 1) && (n <= 7);
end