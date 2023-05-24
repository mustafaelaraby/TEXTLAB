function [sample] = getSample(file)
    text = fopen(file);
    str = fscanf(text,'%s');
    sample=str((double(str) > 64 & double(str)<91 )|(double(str) > 96 & double(str)<123 )|(double(str) > 47 & double(str)<58 ));
end

%--------------------------------> DOCUMENTATION <------------------------%
%{
    getSample() is a function that takes the  random sample text and filters 
    it to extract the Alphapet and numbers from 0 to 9 and stores them in 
    array.
%}