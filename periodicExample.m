
clc;
clear;
close all;
pathRawData="./raw_data/PeriodicTableCSV.csv";
T=readtable(pathRawData);
% disp(T);
elements=table2struct(T);
% for i=1:length(elements)
%     disp(elements(i));
% end
% name="Ununennium";
name="Ne";
results=[];
for i=1:length(elements)
    if contains(elements(i).name,name,"IgnoreCase",false) 
        
        % disp(elements(i));
        results=[results elements(i)];
    end
end
disp(results(1));