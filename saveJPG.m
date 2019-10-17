% Name: saveJPG
%
% Description: 
%   Save the data as JPG file
%
% Calling example:
%   saveJPG(data,[-1 1],'filename.jpg');
%  
% Inputs:
%   data        - the raw data
%   scale       - the display window
%   filename    - the path and filename
%
% Outputs:
%   None
%
% History:
%   Written by Zhentian Wang, 1.7.2010

function output = saveJPG(data,scale,filename)

if (numel(scale) == 0)
    ma = max(max(data));
    mi = min(min(data));
else
    ma = scale(2);
    mi = scale(1);
end


output = (data-mi)./(ma-mi)*255;

imwrite(uint8(output),filename,'jpg','Quality',100);