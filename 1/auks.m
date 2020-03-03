global nfe;
nfe=0;

syms x;
y=@(x) (x.^2-2).^2/7-1;
fplot(y);
axis([0 5 -2 10])
hold on;

l=0;
r=10;
L=r-l;
t=0.618;
eps=10^(-4);
step_counter = 0;
 
x1=r-t*L;
x2=l+t*L;
yx1=f(x1);
yx2=f(x2);
while(L>eps)
    if (yx2<yx1)
        l=x1;
        L=r-l;
        x1=x2;
        x2=l+t*L;
        yx1=yx2;
        yx2=f(x2);
    elseif (yx2>yx1)
        r=x2;
        L=r-l;
        x2=x1;
        x1=r-t*L;
        yx2=yx1;
        yx1=f(x1);
    end

    step_counter = step_counter + 1;
end

fprintf("I funkcija kreiptasi: %f\n", nfe);
fprintf("Zingsniu skaicius: %f\n", step_counter);
fprintf("Sprendinio internavalas: [%f, %f]\n", x1,x2);
fprintf("Rezultatas: %f\n", f(x2));