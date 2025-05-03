%% ================== Author Copywrites ===================
% Author    : Xinyuan Liu
% ID        : a1981985
% Email     : xinyuan.liu@student.adelaide.edu.au
% Date      : 21/04/2025 
%% ========= Periodic Table  queryByAtomicMass ==============
% ================================== =====================
function foundResult = queryByAtomicMass(elements,atomic_mass)
    %QUERYBYNUMBER Summary of this function goes here
    %   Detailed explanation goes here
    for i=1:length(elements)
        if elements(i).atomic_mass==atomic_mass
            foundResult=elements(i);
        end
    end
end
