function foundResult = queryByNumber(elements,elementNumber)
    %QUERYBYNUMBER Summary of this function goes here
    %   Detailed explanation goes here
    for i=1:length(elements)
        if elements(i).number==elementNumber
            foundResult=elements(i);
        end
    end
end
