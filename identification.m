load entree618;
load sortie618;

u = entree618;
y = sortie618;

r= 1;
na = 3;%validé
nb = 2; %validé
nc = 2; %validé

%Model in discret-time
th = armax([u y], [na nb nc r])
ym = idsim(u, th);

%%Calcul Critère pour identification
%CRc(nc) = sum((y-ym).' * (y-ym))/length(ym);
%plot(CRc);

%forme polynomiale
[A, B, C, D] = th2poly(th);

%système continu
thc = d2c(th);

tfc = tf(thc);

plot(ym, 'r');

%plot(u, 'r');
hold on;
plot(y, 'b');