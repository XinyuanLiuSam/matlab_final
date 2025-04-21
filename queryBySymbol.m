%% ================== Author Copywrites ===================
% Author    : Xinyuan Liu
% ID        : a1981985
% Email     : xinyuan.liu@student.adelaide.edu.au
% Date      : 21/04/2025 
%% ========= Periodic Table Application queryByName ==============
% ================================== =====================
function foundResult = queryBySymbol(elements,elementSymbol)
    %QUERYBYNUMBER Summary of this function goes here
    %   Detailed explanation goes here
    foundResult=[];
    for i=1:length(elements)
        if contains(elements(i).symbol,elementSymbol,"IgnoreCase",false) 
            
            % disp(elements(i));
            foundResult=[foundResult elements(i)];
        end
    end
end
