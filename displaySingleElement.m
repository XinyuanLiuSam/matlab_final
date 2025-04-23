function   displaySingleElement(element)
    %DISPLAYSINGLEELEMENT Summary of this function goes here
    %   Detailed explanation goes here
    display(element);
    % load an image
    newImageData = imread(element.image_url);
    
    close all;
    % display as an image
    imshow(newImageData);

end

