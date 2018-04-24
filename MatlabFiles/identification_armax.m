load entree618;
load sortie618;

u = entree618;
y = sortie618;

r= 1;
na = 2;%validé
nb = 2; %validé
nc = 2; %validé

%Model in discret-time
%Calcul fonction de transfert
th = armax([y u], [na nb nc r])
%Modèle appliqué à l'entrée réelle
ym = idsim(u, th);

%%Calcul Critère pour identification
% CRc(nc) = sum((y-ym).' * (y-ym))/length(ym);
%  plot(CRc);


tfd = tf(th);

% %système continu
thc = d2c(th);

% %forme polynomiale
[A, B, C, D] = th2poly(thc);
 
% %Fonction de transfert en continu
tfc = tf(thc)

plot(ym, 'r');

%plot(u, 'r');
hold on;
plot(y, 'b');
hold on;
