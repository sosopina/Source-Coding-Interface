%******************************************************%
%                       ENSA FES                       %
%                  2ème Année GSEII                    %
%******************************************************%
% --Title: Matlab Inteface                             %
% --Project: Source Coding Img/Txt                     %
%******************************************************%
% --File : Source Coding                               %
% --Authors :Ghourdou Mouad & Zaim Oussama             %
% --Created : 24/05/2023                               %
%******************************************************%
% --Description : this code takes an image as an input %
%                     treats it and crops it if needed % 
%******************************************************%
%******************************************************%


function [originalShape, croppedShape, croppedImage]  = prepareImage(image)
    grayScaleImage = rgb2gray(image);
    originalShape = size(grayScaleImage);
    min_dimension = min(originalShape(1), originalShape(2));
    if originalShape(1) == originalShape(2)
        croppedShape = originalShape;
        croppedImage = image;
    else
        croppedShape = [min_dimension, min_dimension];
        croppedImage = imcrop(grayScaleImage, [(originalShape(2) - min_dimension)/2, (originalShape(1) - min_dimension)/2, min_dimension, min_dimension]);
    end
end