%% ================== Author Copywrites ===================
% Author    : Xinyuan Liu
% ID        : a1981985
% Email     : xinyuan.liu@student.adelaide.edu.au
% Date      : 21/04/2025 
%% ========= Periodic Table Application queryBySymbol ==============
% ================================== =====================
function foundResult = queryBySymbol(elements,elementSymbol)
    %QUERYBYSYMBOL Summary of this function goes here
    % for loop to compare the symbol of each element with 
    % elementSymbol from the user input
    foundResult=[];
    for i=1:length(elements)
        if contains(elements(i).symbol,elementSymbol,"IgnoreCase",false) 
            
            % disp(elements(i));
            foundResult=[foundResult elements(i)];
        end
    end
end
