%% ================== Author Copywrites ===================
% Author : Xinyuan Liu
% ID : a1981985
% Email : xinyuan.liu@student.adelaide.edu.au
% Date : 28/04/2025 
%% ================== Environment Cleanup =================
clc; % Clear the command window
clear; % Remove all variables from the workspace
close all; % Close all figure windows
%% ========================================================
T = readtable('./raw_data/PeriodicTableCSV.csv', 'TextType', 'string', 'Encoding', 'UTF-8', VariableNamingRule='preserve');
elements = table2struct(T);
results = elements([elements.period] == 2);
displayMultipleElements(results);
%% ========================================================