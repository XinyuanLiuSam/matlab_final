function [outputArg1,outputArg2] = main(inputArg1,inputArg2)
%MAIN Summary of this function goes here
%   Detailed explanation goes here
outputArg1 = inputArg1;
outputArg2 = inputArg2;
    rawDatasets=loadData();
    preparedElements=preprocessData(rawDataset);
    userInputs=getInput();
    queryResults=queryElements(preparedElements,userInputs);
    finalResult=displayElements(queryResults);
    gamingResult=gamingElements(preparedElements);
end
