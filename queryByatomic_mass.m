function foundResult = queryByatomic_mass(elements,atomic_mass)
    %QUERYBYNUMBER Summary of this function goes here
    %   Detailed explanation goes here
    for i=1:length(elements)
        if elements(i).atomic_mass==atomic_mass
            foundResult=elements(i);
        end
    end
end
