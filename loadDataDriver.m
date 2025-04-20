

clc;
clear;
close all;
pathRawData="./raw_data/PeriodicTableCSV.csv";
rawDatasets = loadData(pathRawData);
disp(rawDatasets);
name="Ca";
results=[];
for i=1:length(rawDatasets)
    if contains(rawDatasets(i).name,name,"IgnoreCase",false)
        % disp(rawDatasets(i));
        results=[results rawDatasets(i)];
    end
end
disp(results(1));