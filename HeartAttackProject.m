h_data = heart;

% 5 random examples and all the feature names 
head(h_data, 5)

% DATA SIZE: (303 x 14)

m = 14;
columnNames = data.Properties.VariableNames;

% Data types
dataTypes = varfun(@class, data, 'OutputFormat', 'cell');
disp('Data Types:');
for i = 1:length(columnNames)
    disp([columnNames{i} ': ' dataTypes{i}]);
end

% Missing Values
missingCounts = sum(ismissing(data));
disp('Missing Values per Column:');
for i = 1:length(columnNames)
    disp([columnNames{i} ': ' num2str(missingCounts(i))]);
end

% Feature Distribution
% This  may take a while to run
for i = 1 : m
    plotHistogram(h_data{:, i}, columnNames{i})
end
disp('Histograms Complete!')

% Correlation Matrix

% Feature Scaling


function plotHistogram(data, plotTitle)
    % plotHistogram creates a histogram for the input data array with a title.
    % Inputs:
    %   - data: Array of numeric data to be visualized in the histogram
    %   - plotTitle: String for the title of the plot

    % Create the histogram
    histogram(data, 'NumBins', 30, 'FaceColor', 'blue', 'EdgeColor', 'black');
    
    % Customize the appearance
    xlabel('Data Values');
    ylabel('Frequency');
    title(plotTitle);
    grid on;
end

