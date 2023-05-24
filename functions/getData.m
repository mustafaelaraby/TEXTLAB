
function [PMF,CDF,NS,MRC,NRC] = getData(sample)
    X = ['0','1','2','3','4','5','6','7','8','9','a','A','b','B','c','C','d','D','e','E','f','F','g','G','h','H','i','I','j','J','k','K','l','L','m','M','n','N','o','O','p','P','q','Q','r','R','s','S','t','T','u','U','v','V','w','W','x','X','y','Y','z','Z'];
    a = zeros([length(X)],1);
    for i=1:length(X)
     for j=1:length(sample)
        if X(i)==sample(j)
            a(i) = a(i)+1;
        end
     end
    end

    PMF = a/length(sample);

    b = zeros([length(X)],1);
    sum =0;
    for i=1:length(PMF)
        sum = sum+PMF(i);
        b(i) = sum;
    end
    CDF = b;
    NS=length(sample);
    [M,i] = max(PMF);
    MRC = X(i);
    NRC = M*NS;
end

%--------------------------------> DOCUMENTATION <------------------------%
%{
    getData() is a function that takes the  filterd array of the Alphapet 
    and numbers from 0 to 9 as input and returns the PMF,NS,MRC,NRC.

% PMF is the probability mass function array.
% NS is the number of elements in the sample.
% MRC is the most reapeated Character.
% NRC is the number of coccurences of MRC.
%}