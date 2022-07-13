% Regula falsi method in the hypothesis of the Bolzano theorem

function[x, nit] = RegulaFalsi(f,a,b,tol,nitMax) 

fa = f(a); 
fb = f(b);
x = (fb*a - fa*b) / (fb - fa); % Iteration formula
fx = f(x);
fprintf('0 \t%1.12f \t  null\n', x)

for nit = 1:nitMax

    if fa * fx < 0 % Hypothesis verification of the Bolzano theorem

        b = x;
        fb = fx;
    else
        a = x;
        fa = fx;
    end

    err = abs(((fb*a - fa*b) / (fb - fa)) - x); % Absolute error calculation

    if err < tol
        return
    end

    x = (fb*a - fa*b) / (fb - fa); % Iteration formula 
    fx = f(x);
    fprintf('%i \t%1.12f \t  %.2e\n', nit, x, err)

end