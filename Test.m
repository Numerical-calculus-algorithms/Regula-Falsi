%% Primo test metodo regula falsi
f =@ cos;
a = 1;
b = 2;
tol = 1e-10;
maxIter = 100;
fprintf("<strong>Passo\t    Valore x \tStima errore</strong>\n")
RegulaFalsi(f,a,b,tol,maxIter);

%% Secondo test metodo regula falsi
f =@(x) x^3 - x - 2;
a = 1;
b = 2; 
tol = 1e-10;
maxIter = 100;
fprintf("<strong>Passo\t    Valore x \tStima errore</strong>\n")
RegulaFalsi(f,a,b,tol,maxIter);