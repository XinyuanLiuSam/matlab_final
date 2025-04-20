function preparedElements = loadElements( )
    %LOADELEMENTS Summary of this function goes here
    %   Detailed explanation goes here
    pathRawData="./raw_data/PeriodicTableCSV.csv";
    rawDatasets = loadData(pathRawData);
    preparedElements=preprocessData(rawDatasets);
end

