function rawDatasets = loadData(pathRawData)
% loading the raw data from given .csv file location. 
% 
% Parameter pathRawData： full file name with path in this local machine.
% return rawDatasets: struct Array of all elements
    
    % load raw data from given .csv data file of Periodic Table;
    T=readtable(pathRawData);
    % convert the loaded raw data table into struct array;
    rawDatasets=table2struct(T);
end

