function foundResult = queryByPeriod(elements,elementPeriod)

    %QUERYBYNUMBER Summary of this function goes here
    %   Detailed explanation goes here
    foundResult=[];
    for i=1:length(elements)
        if elements(i).period==elementPeriod
            foundResult=[foundResult elements(i)];
        end
    end
end
