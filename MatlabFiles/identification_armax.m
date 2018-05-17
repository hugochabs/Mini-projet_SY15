%%Hugo Chabin - Geerthana Selliah 
%%Mini-projet SY15 - P18
%%M�thode ARMAX

load entree618;
load sortie618;

u = entree618;
y = sortie618;

r = 1;
na = 2;
nb = 2; 
nc = 2;

%Model en temps discret
th = armax([y u], [na nb nc r])
%Mod�le appliqu� � l'entr�e r�elle
ym = idsim(u, th);

%%Calcul Crit�re pour identification
% CRc(nc) = sum((y-ym).' * (y-ym))/length(ym);
%  plot(CRc);

%Fonction de transfert en temps discret
tfd = tf(th);

%Syst�me continu
thc = d2c(th);

%Forme polynomiale
[A, B, C, D] = th2poly(thc);
 
%Fonction de transfert en continu
tfc = tf(thc)

%Graphiques
plot(ym, 'r');
%plot(u, 'r');
hold on;
plot(y, 'b');
hold on;
