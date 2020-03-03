
function pusiau()
  global nfe;
  nfe = 0;
  
  l = 0;
  r = 10;
  eps = 10^(-4);
  xm = (r+l)/2;
  yxm = f(xm);
  x1=0;
  x2=0;
  
  syms x;
  y=@(x) (x.^2-2).^2/7-1;
  fplot(y);
  axis([0 5 -2 10])
  hold on;
  
  step_counter = 0;
  
  while(r-l>eps)
      L=r-l;
      x1=l+L/4;
      x2=r-L/4;
      y1=f(x1);
      y2=f(x2);
      
      if (y1<yxm)
        r=xm;
        xm=x1;
        yxm=y1;
      elseif (y2<yxm)
        l=xm;
        xm=x2;
        yxm=y2;
      else
         l=x1;
         r=x2;
      end
      
      step_counter = step_counter + 1;
  end
  
fprintf("I funkcija kreiptasi: %f\n", nfe);
fprintf("Zingsniu skaicius: %f\n", step_counter);
fprintf("Sprendinys: %f\n", xm);
fprintf("Sprendinio intervalas: [%f, %f]\n", l,r);
fprintf("Rezultatas: %f\n", f(xm));
end




