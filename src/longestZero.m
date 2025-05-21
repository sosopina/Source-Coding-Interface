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
% --Description : this code finds the longest sequence %
%                               of zeros               % 
%******************************************************%
%******************************************************%
function [seq_length] = longestZero(array)
    h = waitbar(0,'Searching for longest sequence of zeros...');
    seq_length = 0;
    previous_reported_progress = 0;
    one_percent = length(array)/100;
    for i = 1:length(array)
        if (i - previous_reported_progress) > one_percent
            waitbar(i / length(array))
            previous_reported_progress = i;
        end
        if array(i) == 0
            temp_length = 1;
            for j = i+1:length(array)
                if array(j) == 0
                    temp_length = temp_length + 1;
                else
                    break;
                end
            end
            if temp_length > seq_length
                seq_length = temp_length;
            end
        end
    end
    close(h)
end