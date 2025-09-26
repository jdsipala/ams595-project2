%% write a function that retursns how many
% iterations it takes for a point to diverge (|z|>2.0)

function it = fractal(c)
% fractal returns the # of iterations until divergence for mandelbrot
% input c - complex point (c = 1 + 1.5i)
% output it - # of iterations when |z| > 2.0
%   if divergence is not detected within 100 iterations, return 100

z = 0; % Initialize z as a complex number
maxIt = 100; % set max iterations = 100

for it = 1:maxIt
    z = z^2 + c; % Update z using the Mandelbrot formula
    if abs(z) > 2.0
        return; % Exit the function if divergence is detected
    end
end

it = maxIt; % If no divergence, set it to max iterations
end