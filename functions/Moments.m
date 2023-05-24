function [mean,var,sigma,skew,kurt] = Moments(PMF)
    X = 0:61;
    sum1 = 0;
    sum2 = 0;
    sum3 = 0;
    sum4 = 0;
    for i=1:length(PMF)
        sum1 = sum1 + X(i)*PMF(i);
        sum2 = sum2 + (X(i)^2)*PMF(i);
        sum3 = sum3 + (X(i)^3)*PMF(i);
        sum4 = sum4 + (X(i)^4)*PMF(i);
    end
    E_X_1= sum1;
    E_X_2= sum2;
    E_X_3= sum3;
    E_X_4= sum4;
    mean = E_X_1;
    var = ((E_X_2) - (mean^2));
    sigma = sqrt(var);
    skew = ((E_X_3 - (3*mean*var)-(mean^3))/(sigma^3));
    kurt = ((E_X_4 - (4*mean*E_X_3) + (6*(mean^2)*var) +(3*(mean^4)))/(sigma^4));
end

%--------------------------------> DOCUMENTATION <------------------------%
%{
    Moments is a function that takes the PMF of a discrete random variable
    representing the letters and numbers sample and returns the mean,vaiance,
    sigma, skewness, and kurtosis of X.

% PMF is the probability mass function array.
% mean is the mean of X.
% var is the variance of X.
% sigma is the standard diviation of X.
% skew is The skewness1 of X.
% kurt is The kurtosis2 of X.
% E_X_1 is the E(X).
% E_X_2 is the E(X^2).
% E_X_3 is the E(X^3).
% E_X_4 is the E(X^4).
%}