

%

function m = bisection(fn_f, s, e)
% finds boundary where the indicator goes from -1 (inside) to +1 (outside)

    fs = fn_f(s); % indicator at lower bound
    fe = fn_f(e); % indicator at upper bound

    % check if sign change is correct

    if fs >= 0 || fe <= 0
        error('fn_f(s) must be < 0 and fn_f(e) must be > 0');
    end

    % Initialize the tolerance
    tolerance = 1e-6;
    maxIter = 60; % max iterations

    for iter = 1:maxIter
        m = (s + e) / 2; % midpoint
        fm = fn_f(m); % evaluate function at midpoint

        % break if interval is small enough
        if abs(e - s) < tolerance
            break; % root found within tolerance
        end

        % keep the half that still contains the sign change
        if fm > 0
            e = m; % update upper bound
        else
            s = m; % update lower bound
        end

        % final midpoint estimate

        m = (s+e)/2;
    end
end

    