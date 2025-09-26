%%
%

function fn = indicator_fn_at_x(x)
% returns an indicator function along a vertical line at given x
%   fn(y) = -1 if (x + 1i*y) is inside (no divergence within 100 iterations)
%           +1 if (x + 1i*y) is outside (diverges within 100 iterations)

fn = @(y) indicator_value(x, y);
end

function val = indicator_value (x, y)
    c = x + 1i*y;
    it = fractal(c);
    if it == 100
        val = -1; % (inside) Indicates divergence
    else
        val = +1; % (outside) Indicates no divergence
    end
end
