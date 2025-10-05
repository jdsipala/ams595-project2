
function L = poly_len(p, s, e)
% p fitted polynomial coefficients 
% s (left bound on x) e (right bound on x)
% L = curve length [s, e]

    % take the derivative of the polynomial
    dp = polyder(p);                     % new coefficients for the derivative

    % make the function sqrt(1 + (P'(x))^2)
    ds = @(x) sqrt( 1 + (polyval(dp, x)).^2 );
    % integrate that function from s to e to get the length
    L = integral(ds, s, e);              % built-in integral function
end