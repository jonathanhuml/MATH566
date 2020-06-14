function et = cheb_bary(n)
xx = linspace(-1,1,5000)'; %create 500 evenly spaced points from -1 to 1
numer = zeros(size(xx)); 
denom = zeros(size(xx));
fun = inline('1./(1+16*x.^2)');
x = cos(pi*(0:n)'/n); %chebyshev node creation
f = fun(x);
c = [1/2; ones(n-1,1); 1/2].*(-1).^((0:n)');
    
 for j = 1:n+1
     xdiff = xx-x(j);
     temp = c(j)./xdiff;
     numer = numer + temp*f(j);
     denom = denom + temp;
 end
    
ff = numer./denom;
fx = 1./(1+16*xx.^2); 

et = max(abs(fx-ff));

end