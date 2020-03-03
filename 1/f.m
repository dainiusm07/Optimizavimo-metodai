function [y] = f(x)
    global nfe;
    nfe = nfe + 1;
    y = (x^2-2)^2/7-1;
    plot(x, y, 'go')
end

