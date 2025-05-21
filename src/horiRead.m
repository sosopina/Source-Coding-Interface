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
% --Description :   this code take in the image and    %
%                    reads it on a horizontal form     % 
%******************************************************%
%******************************************************%
function [vector] = horiRead(image)
    vector = zeros(1, size(image, 2)*size(image, 1));
    for i = 1:size(image, 1)
        for j = 1:size(image, 2)
            vector((i-1)*size(image, 2)+j) = image(i, j);
        end
    end
end
