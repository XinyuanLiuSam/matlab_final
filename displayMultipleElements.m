function   displayMultipleElements(elements)

    %DISPLAYSINGLEELEMENT Summary of this function goes here
    %   Detailed explanation goes here
    display(elements);
    maxDisplay = min(length(elements), 8);
    rows = 2;
    cols = 4;
    figure('Name', 'Element Images', 'NumberTitle', 'off', 'Color', 'w');
    for i = 1:maxDisplay
        elem = elements(i);
        imgData = imread(elem.image_url);
        subplot(rows, cols, i);
        imshow(imgData);
        title(elem.name);
    end
end

