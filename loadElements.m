function preparedElements = loadElements( )
    %LOADELEMENTS Summary of this function goes here
    %   Detailed explanation goes here
    pathRawData="./raw_data/PeriodicTableCSV.csv";
    rawDatasets = loadData(pathRawData);
    preparedElements=preprocessData(rawDatasets);
    
    % get the period and group for
    maxPeriod = max([preparedElements.period]);
    maxGroup = max([preparedElements.group]);

    % initialize string elementMatrix with "" 
    elementMatrix = strings(maxPeriod, maxGroup);
    [numRows, numCols] = size(elementMatrix);
    % get each element and put symbol into matrix accroding its period and
    % group;
    for i = 1:length(preparedElements)
        row = preparedElements(i).period;
        col = preparedElements(i).group;
        elementMatrix(row, col) = preparedElements(i).symbol;
    end
    for i = 1:numRows
        rowText = "  "; % tab for each line
        for j = 1:numCols
            elemName = elementMatrix(i, j);
            if elemName == ""
                elemName = "--"; % "----" as the empty space.
            end
            rowText = rowText + sprintf("%-4s", elemName); % each element have 16
        end
        disp(rowText)
    end
end

