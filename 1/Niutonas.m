function Niutonas()

    global nfe;
    nfe = 0;

    syms y(t);
    y(t) = (t^2-2)^2/7-1;
    
    df = diff(y);
    dfdf = diff(df);
    
    fplot(y);
    axis([0 5 -2 10]);
    hold on;
    
    x(1) = 5;
    i = 1;
    eps = 10^(-4);
 
    while abs(df(x(i))) > eps
        x(i+1) = x(i) - df(x(i))/dfdf(x(i));
        plot(x(i), y(x(i)), 'go');
        i = i + 1;
    end
    
    fprintf("I funkcija kreiptasi: %f\n", nfe);
    fprintf("Zingsniu skaicius: %f\n", i-1);
    fprintf("Sprendinys: %f\n", x(i));
    fprintf("Rezultatas: %f\n", f(x(i)));
    
end

